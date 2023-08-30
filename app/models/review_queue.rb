# frozen_string_literal: true

class ReviewQueue < ApplicationRecord
  has_and_belongs_to_many :words, class_name: 'Vocabulary'

  validates :vocabulary_id, presence: true
  validates :review_date,   presence: true
  validates :vocabulary_id, numericality: { greater_than_or_equal_to: 0 }
end
