require 'rails_helper'

RSpec.describe TradingCategory, type: :model do
  before :each do
    @user = User.create(name: 'Elio', email: 'elio.cortes3000@gmail.com', password: '123456',
                        password_confirmation: '123456')
    @user.save
    @category = Category.create(author_id: @user.id, name: 'Sport',
                                icon: 'app\assets\images\Sports\icons8-basketball-50.png')
    @category.save
    @trading = Trading.create(author_id: @user.id, name: 'Ball', amount: 56)
    @trading.save
    @category_trading = TradingCategory.create(category_id: @category.id, trading_id: @trading.id)
    @category_trading.save
  end
end
