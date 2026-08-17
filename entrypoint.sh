#!/bin/bash
set -e

# Clear PID file from previous runs (avoids Puma port conflict)
rm -f /app/tmp/pids/server.pid

# Run database migrations
bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:setup

# Run seeds if needed
bundle exec rails db:seed 2>/dev/null || true

# Execute the main process (passed as CMD/entrypoint args)
exec "$@"
