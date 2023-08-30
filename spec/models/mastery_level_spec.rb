require 'rails_helper'

RSpec.describe MasteryLevel, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:level) }
    it { is_expected.to validate_numericality_of(:level).is_greater_than_or_equal_to(0) }
  end
end
