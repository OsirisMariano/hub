FROM ruby:3.3.0

# Install system dependencies needed for Node.js, Yarn, and SQLite
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    libsqlite3-dev \
    libpq-dev \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 20 via NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    rm -rf /var/lib/apt/lists/*

# Install foreman (for running Procfile.dev with multiple processes)
RUN gem install foreman --no-document

WORKDIR /app

# Install Ruby gems (cached layer if Gemfile hasn't changed)
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4

# Install JavaScript dependencies (cached layer if package.json hasn't changed)
COPY package.json yarn.lock ./
RUN corepack enable && corepack prepare yarn@1.22.22 --activate && \
    yarn install --frozen-lockfile

# Copy application source code
COPY . .

# Make entrypoint executable
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["entrypoint.sh"]
CMD ["foreman", "start", "-f", "Procfile.dev"]
