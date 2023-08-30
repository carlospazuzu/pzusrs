# frozen_string_literal: true

class CreateVocabularies < ActiveRecord::Migration[7.0]
  def change
    create_table :vocabularies do |t|
      t.string  :word,          null: false
      t.string  :reading,       null: false
      t.integer :mastery_level, null: false, default: 0

      t.timestamps
    end
  end
end
