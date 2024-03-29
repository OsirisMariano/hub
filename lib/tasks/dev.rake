# frozen_string_literal: true

namespace :dev do
  desc "Adicionando registros no sistema, aguarde! ;)"
  task add_articles: :environment do
    show_spinner("Adicionando registros ao banco de dados") { add_articles }
  end

  desc "Adicionando registros no sistema, aguarde! ;)"
  task add_docs: :environment do
    show_spinner("Adicionando registros ao banco de dados") { add_docs }
  end

  def add_articles
    50.times do
      Article.create(
        title: Faker::Lorem.sentence.delete("."),
        body: Faker::Lorem.paragraph(sentence_count: rand(100..200)),
      )
    end
  end

  def add_docs
    50.times do
      Doc.create(
        title: Faker::Lorem.sentence.delete("."),
        content: Faker::Lorem.paragraph(sentence_count: rand(100..200)),
        user: User.all.sample,
      )
    end
  end

  def show_spinner(msg_start, msg_end = "Adicionado!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
