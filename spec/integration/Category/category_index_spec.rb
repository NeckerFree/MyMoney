require 'rails_helper'

RSpec.describe 'Category Index page', type: :system do
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

  it 'I can see the category name.' do
    visit '/categories'
    expect(page).to have_content(@category.name)
  end

  it 'I can see remove button' do
    visit '/categories'
    expect(page).to have_content('Delete')
  end

  it 'When I click on a category, it redirects me to that category show page.' do
    visit '/categories'
    click_link(@category.name.to_s)
    expect(page).to have_content(@category.name.to_s)
  end
  it 'When I click  remove button, category is deleted.' do
    visit '/categories'
    click_button 'Delete'
    expect(page).to have_no_content(@category.name.to_s)
  end
end
