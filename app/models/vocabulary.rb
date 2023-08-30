# frozen_string_literal: true

class Vocabulary < ApplicationRecord
  include Reviewable

  validates :word,          uniqueness: true
  validates :word,          presence:   true
  validates :reading,       presence:   true
  validates :mastery_level, presence:   true
end
