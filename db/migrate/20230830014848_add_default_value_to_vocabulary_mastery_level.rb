# frozen_string_literal: true

class AddDefaultValueToVocabularyMasteryLevel < ActiveRecord::Migration[7.0]
  def change
    change_column_default :vocabularies, :mastery_level, 0
  end
end
