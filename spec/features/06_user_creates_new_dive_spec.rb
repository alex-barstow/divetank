require 'rails_helper'

feature 'user creates a new dive', %(
  As an authenticated user
  I want to create a new dive
  So that I can keep my log up to date
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user_id: user.id) }

  scenario 'dive index page has button to add a new dive' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    expect(page).to have_link('Add a Dive')
  end

  # add more to this down the road
  scenario 'dive index page has button to add a new dive' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    expect(page).to have_link('Add a Dive')
  end

  scenario 'user enters valid information' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'Add a Dive'

    fill_in 'Title', with: 'Rockport Shore Dive'
    fill_in 'Site', with: 'Pebble Beach'
    fill_in 'Date', with: '2016-10-10'

    click_button 'Add Dive'
    expect(page).to have_content('Rockport Shore Dive')
  end

  scenario 'user enters invalid information' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'Add a Dive'

    fill_in 'Title', with: 'Rockport Shore Dive'
    fill_in 'Site', with: 'Pebble Beach'

    click_button 'Add Dive'
    expect(page).to have_content('Date can\'t be blank')
  end

  scenario 'user enters invalid information' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'Add a Dive'

    click_button 'Add Dive'
    expect(page).to have_content('Date can\'t be blank')
    expect(page).to have_content('Title can\'t be blank')
    expect(page).to have_content('Site name can\'t be blank')
  end

end
