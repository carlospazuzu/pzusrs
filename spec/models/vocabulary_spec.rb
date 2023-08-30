require 'rails_helper'

RSpec.describe Vocabulary, type: :model do
  subject { FactoryBot.build(:vocabulary) }

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:word) }
    it { is_expected.to validate_presence_of(:reading) }
    it { is_expected.to validate_presence_of(:mastery_level) }
    it { is_expected.to validate_uniqueness_of(:word) }
  end

  context 'When creating a new vocabulary instance' do
    it 'Creates a new ReviewList record with vocabulary id' do
      subject.save!
      expect(ReviewList.first.vocabulary_id).to eq(subject.id)
    end
  end
end
