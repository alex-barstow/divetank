require 'rails_helper'

feature 'user creates a new dive', %(
  As an authenticated user
  I want to create a new dive
  So that I can keep my log up to date
) do

  let!(:user) { FactoryGirl.create(:user) }

  scenario 'dive index page has button to add a new dive', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    expect(page).to have_link('Log a Dive')
  end

  # add more to this down the road
  scenario 'dive index page has button to add a new dive', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    expect(page).to have_link('Log a Dive')
  end

  scenario 'user enters valid information', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'Log a Dive'

    fill_in 'Title', with: 'Rockport Shore Dive'
    fill_in 'Site', with: 'Pebble Beach'
    page.execute_script("$('#datepicker').val('10/17/2016')")
    fill_in 'Max. Depth', with: 60
    fill_in 'Rating', with: 4

    click_button 'Add Dive'
    expect(page).to have_content('Rockport Shore Dive')
  end

  scenario 'user enters invalid information', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'Log a Dive'

    fill_in 'Title', with: 'Rockport Shore Dive'
    fill_in 'Site', with: 'Pebble Beach'

    click_button 'Add Dive'
    expect(page).to have_content('Date can\'t be blank')
  end

  scenario 'user enters invalid information', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'Log a Dive'

    click_button 'Add Dive'
    expect(page).to have_content('Date can\'t be blank')
    expect(page).to have_content('Title can\'t be blank')
    expect(page).to have_content('Site name can\'t be blank')
  end

  scenario 'unauthenticated user is redirected from new dive form' do
    visit new_dive_path
    expect(page).to_not have_current_path(new_dive_path)
    expect(page).to have_content('You need to sign in or sign up before continuing.')
  end
end
