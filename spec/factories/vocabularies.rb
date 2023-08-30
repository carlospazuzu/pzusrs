# frozen_string_literal: true

FactoryBot.define do
  factory :vocabulary do
    word { 'Valid word' }
    reading { 'Valid reading' }
    mastery_level { 0 }
  end
end
