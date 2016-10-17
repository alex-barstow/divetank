require 'rails_helper'

feature 'user sees dive list', %(
  As an authenticated user
  I want to see a list of all my dives
  So that I can access their details from one place
) do

  let!(:dive) { FactoryGirl.create(:dive) }
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user specifies valid and required information' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    expect(page).to have_content(dive.site_name)
    expect(page).to have_content(dive.date)
  end

end
