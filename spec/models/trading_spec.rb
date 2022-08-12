require 'rails_helper'

RSpec.describe Trading, type: :model do
  before :each do
    @user = User.create(name: 'Elio', email: 'elio.cortes3000@gmail.com', password: '123456',
                        password_confirmation: '123456')
    @user.save
    @category = Category.create(author_id: @user.id, name: 'Sport',
                                icon: 'app\assets\images\Sports\icons8-basketball-50.png')
    @category.save
    @trading = Trading.create(author_id: @user.id, name: 'Ball', amount: 56)
    @trading.save
  end
  context 'Trading validations' do
    it 'name should not be blank' do
      @trading.name = '  '
      expect(@trading).to_not be_valid
    end

    it 'name should not exceed 100 characters' do
      @trading.name = 'x' * 101
      expect(@trading).to_not be_valid
    end

    it 'amount should be > 0' do
      expect(@trading.amount).to be > 0
    end
  end
end
