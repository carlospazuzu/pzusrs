require 'rails_helper'

RSpec.describe Vocabulary, type: :model do
  subject { FactoryBot.build(:vocabulary) }

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:word) }
    it { is_expected.to validate_presence_of(:reading) }
    it { is_expected.to validate_presence_of(:mastery_level) }
    it { is_expected.to validate_uniqueness_of(:word) }
    it { is_expected.to validate_numericality_of(:mastery_level).is_greater_than_or_equal_to(0) }
  end

  describe 'Associations' do
    it { is_expected.to have_and_belong_to_many(:review_lists) }
    it { is_expected.to have_and_belong_to_many(:review_queues) }
  end

  context 'When creating a new vocabulary instance' do
    it 'Creates a new ReviewList record with vocabulary id' do
      subject.save!
      expect(ReviewList.first.vocabulary_id).to eq(subject.id)
    end
  end
end
