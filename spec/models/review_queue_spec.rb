require 'rails_helper'

RSpec.describe ReviewQueue, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:review_date) }
    it { is_expected.to validate_presence_of(:vocabulary_id) }
    it { is_expected.to validate_numericality_of(:vocabulary_id).is_greater_than_or_equal_to(0) }
  end

  describe 'Associations' do
    it { is_expected.to have_and_belong_to_many(:words) }
  end
end
