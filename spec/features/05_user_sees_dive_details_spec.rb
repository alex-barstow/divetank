require 'rails_helper'

feature 'user sees dive details on show page', %(
  As an authenticated user
  I want to see the details for a specific dive
  So that I can keep track of my dive experiences
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user_id: user.id) }

  scenario 'each dive show page has that dive\'s details', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    click_link 'View Details'

    expect(page).to have_content(user.dives.first.title)
    expect(page).to have_content(user.dives.first.site_name)
    expect(page).to have_content(user.dives.first.date)
  end

  scenario 'each dive show page has a button to go back to the index page', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    click_link 'View Details'
    click_link 'Back'
    expect(page).to have_content(user.dives.first.title)
  end
end
