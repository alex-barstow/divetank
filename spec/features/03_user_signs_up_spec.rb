require 'rails_helper'

feature 'user signs up', %(
  As a prospective user
  I want to create an account
  So that I can start tracking my dives
) do

  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user specifies valid and required information', js: true do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Username', with: 'username'
    fill_in 'First name', with: 'firstname'
    fill_in 'Last name', with: 'lastname'
    fill_in 'user_password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign Up'
    expect(page).to have_content('Welcome to DiveTank! You have signed up successfully.')
    expect(page).to have_selector('#signout')
  end

  scenario 'user specifies invalid information' do
    visit root_path
    click_link 'Sign Up'
    click_button 'Sign Up'
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("Password can't be blank")
    expect(page).to have_content("User name can't be blank")
    expect(page).to have_content("First name can't be blank")
    expect(page).to have_content("Last name can't be blank")
    expect(page).to have_content('User name is too short')
    expect(page).to_not have_selector('#signout')
  end

  scenario 'user specifies incorrect password confirmation' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Username', with: 'username'
    fill_in 'First name', with: 'firstname'
    fill_in 'Last name', with: 'lastname'
    fill_in 'user_password', with: 'password'
    fill_in 'Password confirmation', with: 'password1'
    click_button 'Sign Up'
    expect(page).to have_content("Password confirmation doesn't match Password")
    expect(page).to_not have_selector('#signout')
  end

end
