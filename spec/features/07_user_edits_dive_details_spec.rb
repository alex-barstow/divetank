require 'rails_helper'

feature 'user edits an existing dive', %(
  As an authenticated user
  I want to be able to edit a dive
  So that I can always make sure my dive info is correct
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user_id: user.id) }

  scenario 'a dive\'s show page has an edit button', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'

    expect(page).to have_link('Edit')
  end

  scenario 'a user edits a dive', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'
    click_link 'Edit'

    fill_in 'Title', with: 'Gloucester Shore Dive'
    fill_in 'Site', with: 'Back Beach'
    page.execute_script("$('#datepicker').val('10/17/2016')")
    fill_in 'Max. Depth', with: 60

    click_button 'Add Dive'

    expect(page).to have_content('Gloucester Shore Dive')
  end

  scenario 'a user edits a dive but enters invalid information', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'
    click_link 'Edit'

    fill_in 'Site', with: ''
    click_button 'Add Dive'

    expect(page).to have_content('Site name can\'t be blank')
  end

  scenario 'unauthenticated user is redirected from dive edit form' do
    visit edit_dive_path(dive)
    expect(page).to_not have_current_path(edit_dive_path(dive))
    expect(page).to have_content('You need to sign in or sign up before continuing.')
  end
end
