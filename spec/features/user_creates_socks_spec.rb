require 'rails_helper'

feature 'user can create socks' do
  scenario 'successfully' do
    user = FactoryGirl.create(:user)

    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'

    visit root_path
    click_on 'add a sock'

    fill_in 'Brand', with: 'Nike'
    fill_in 'Style', with: 'Wool'
    click_on 'Create Sock'

    expect(page).to have_content('Successfully created socks.')
    expect(page).to have_content('Nike')
    expect(page).to have_content('Wool')
  end
end
