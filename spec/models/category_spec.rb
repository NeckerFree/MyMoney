require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create(name: 'Elio', email: 'elio.cortes3000@gmail.com', password: '123456',
                        password_confirmation: '123456')
    @user.save
    @category = Category.create(author_id: @user.id, name: 'Sport',
                                icon: 'app\assets\images\Sports\icons8-basketball-50.png')
    @category.save
  end
  context 'Categories validations' do
    it 'name should not be blank' do
      @category.name = '  '
      expect(@category).to_not be_valid
    end

    it 'name should not exceed 100 characters' do
      @category.name = 'x' * 101
      expect(@category).to_not be_valid
    end

    it 'icon should not exceed 300 characters' do
      @category.icon = 'x' * 301
      expect(@category).to_not be_valid
    end
  end
end
