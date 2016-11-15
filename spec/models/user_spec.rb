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
    describe '#password' do
      it 'is required' do
        user = FactoryGirl.build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end
    end
    it 'length should be greater than or equal to 8 characters' do
      user = FactoryGirl.build(:user, password: '123')
      user.valid?
      expect(user.errors[:password]).to eq ["is too short (minimum is 8 characters)"]
    end
  end
end
