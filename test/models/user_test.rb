require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'User should be valid' do
    @user = User.new(name: 'Elio Nel', email: 'elio@gmail.com', password: '123456',
                     confirmed_at: Time.now)
    assert @user.valid?
    puts 'user is valid'
  end
  test 'name should not be blank' do
    @user = User.new(name: '  ')
    assert_not @user.valid? 'username is empty strin'
    puts 'username is present'
  end
end
