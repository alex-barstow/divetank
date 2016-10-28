require 'rails_helper'

feature 'user edits profile details', %(
  As an authenticated user
  I want to be able to edit my profile
  So that I can keep it up-to-date
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user_id: user.id) }

  scenario 'user sees a button to take them to a form to edit profile details', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    expect(page).to have_selector('#editprofile')
  end

  scenario 'user enteres valid information', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link('editprofile')

    fill_in 'Certification Agency', with: 'PADI'
    fill_in 'List your certifications', with: 'Advanced, Nitrox'
    click_button 'Submit Changes'

    expect(page).to have_content('PADI')
    expect(page).to have_content('Advanced, Nitrox')
  end

  scenario 'user enters invalid information', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link('editprofile')

    fill_in 'Certification Agency', with: 'PADI'
    fill_in 'List your certifications', with: 'Advanced, Nitrox'
    fill_in 'Number of dives logged before DiveTank', with: -1

    click_button 'Submit Changes'

    expect(page).to_not have_content('PADI')
    expect(page).to_not have_content('Advanced, Nitrox')
    expect(page).to have_content('Starting dive number must be greater than or equal to 0')
  end

  scenario 'dive total is calculated by starting_dive_number plus number of dive entries', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    expect(page).to have_content('1 dive')
  end

  scenario 'dive total updates when starting_dive_number is edited', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link('editprofile')

    fill_in 'Number of dives logged before DiveTank', with: 32

    click_button 'Submit Changes'

    expect(page).to have_content('33 dives')
  end
end
