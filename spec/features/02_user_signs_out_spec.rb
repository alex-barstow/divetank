require 'rails_helper'

feature 'user signs out', %(
  As an authenticated user
  I want to sign out
  So that no one else can post on my behalf
) do

  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user specifies valid and required information', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    expect(page).to have_content('Signed in successfully.')
    click_link('signout')
    expect(page).to have_content('Sign In')
    expect(page).to_not have_selector('#signout')
  end
end
