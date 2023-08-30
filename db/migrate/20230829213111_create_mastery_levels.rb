# frozen_string_literal: true

class CreateMasteryLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :mastery_levels do |t|
      t.string  :title
      t.integer :level
    end
  end
end
