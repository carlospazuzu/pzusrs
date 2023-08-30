# frozen_string_literal: true

class Vocabulary < ApplicationRecord
  include Reviewable

  has_and_belongs_to_many :review_lists
  has_and_belongs_to_many :review_queues

  validates :word,          uniqueness: true
  validates :word,          presence:   true
  validates :reading,       presence:   true
  validates :mastery_level, presence:   true
  validates :mastery_level, numericality: { greater_than_or_equal_to: 0 }
end
