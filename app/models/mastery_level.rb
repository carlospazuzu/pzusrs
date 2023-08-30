# frozen_string_literal: true

# class responsible to measure the level of mastery of a word of a user
class MasteryLevel < ApplicationRecord
  validates :title, presence: true
  validates :level, presence: true
  validates :level, numericality: { greater_than_or_equal_to: 0 }
end
