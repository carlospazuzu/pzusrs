# frozen_string_literal: true

# define the automatic review creation upon word creation
module Vocabulary::Reviewable
  extend ActiveSupport::Concern

  included do
    after_create_commit do
      ReviewList.create(vocabulary_id: id)
    end
  end
end
