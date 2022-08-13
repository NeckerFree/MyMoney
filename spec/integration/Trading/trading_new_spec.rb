require 'rails_helper'

RSpec.describe 'Category New page', type: :system do
  before(:all) do
    @user = User.create(name: 'Elio', email: 'elio.cortes3000@gmail.com', password: '123456',
                        password_confirmation: '123456')
    @user.save

    visit 'users/sign_in'
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    sleep(1)
    fill_in 'Password', with: @user.password
    sleep(1)
    click_button 'Log in'

    @category = Category.create(author_id: @user.id, name: 'Sport',
                                icon: 'app\assets\images\Sports\icons8-basketball-50.png')
    @category.save
  end

  it 'I can see the category name' do
    visit 'categories/1/tradings/new'
    expect(page).to have_content("Category: #{@category.name}")
  end

  it 'I can see the label name.' do
    visit 'categories/1/tradings/new'
    expect(page).to have_content('Name')
  end

  it 'I can see the label amount.' do
    visit 'categories/1/tradings/new'
    expect(page).to have_content('Amout')
  end

  it 'I can see save button' do
    visit 'categories/1/tradings/new'
    expect(page).to have_content('Save')
  end
end
