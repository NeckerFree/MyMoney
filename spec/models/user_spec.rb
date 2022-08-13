require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Elio Nel', email: 'elio@gmail.com', password: '123456')
    @user.save
  end
  context 'Users validations' do
    it 'name should not be blank' do
      expect(@user).to be_valid
    end
  end
end
