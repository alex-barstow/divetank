require 'rails_helper'

feature 'user signs in', %(
  As an unauthenticated user
  I want to sign in
  So that I can log my dives
) do

  scenario 'user specifies valid and required information' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    expect(page).to have_content('Signed in successfully.')
    expect(page).to_not have_button('Sign In')
    expect(page).to have_content('Sign Out')
  end

  scenario 'user specifies invalid information' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password + 'abc'
    click_button 'Sign In'
    expect(page).to have_content('Invalid Email or password.')
    expect(page).to have_button('Sign In')
    expect(page).to_not have_content('Sign Out')
  end

  scenario 'user specifies invalid information' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email + 'abc'
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    expect(page).to have_content('Invalid Email or password.')
    expect(page).to have_button('Sign In')
    expect(page).to_not have_content('Sign Out')
  end
end
