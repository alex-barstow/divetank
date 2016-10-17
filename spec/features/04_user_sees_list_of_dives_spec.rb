require 'rails_helper'

feature 'user sees dive list', %(
  As an authenticated user
  I want to see a list of all my dives
  So that I can access their details from one place
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user_id: user.id) }

  scenario 'user logs in and sees their dives' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    expect(page).to have_content(user.dives.first.title)
  end

  scenario 'each dive entry has a link to its show page' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_button 'View Details'
    
    expect(page).to have_content(user.dives.first.title)
    expect(page).to have_content(user.dives.first.site_name)
    expect(page).to have_content(user.dives.first.date)
  end
end
