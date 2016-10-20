require 'rails_helper'

feature 'user deletes an existing dive', %(
  As an authenticated user
  I want to be able to delete a dive
  So that I can always make sure my dive info is correct
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user: user) }

  scenario 'a dive\'s show page has a delete button', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'

    expect(page).to have_link('Delete')
  end

  scenario 'user can delete a dive from its show page', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'
    click_link 'Delete'
    expect(page).to_not have_content(dive.title)
  end
end
