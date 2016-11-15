require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'has a valid factory' do
      expect(FactoryGirl.build(:user)).to be_valid
    end
    describe '#email' do
      it 'is required' do
        user = FactoryGirl.build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end
    end
  end
end
