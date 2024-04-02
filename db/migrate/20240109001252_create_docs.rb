# frozen_string_literal: true

class CreateDocs < ActiveRecord::Migration[7.0]
  def change
    create_table(:docs, id: :uuid) do |t|
      t.string(:title)
      t.text(:content)

      t.timestamps
    end
  end
end
