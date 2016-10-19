require 'rails_helper'

feature 'user uploads photo to dive', %(
  As an authenticated user
  I want to be able to add photos to a dive
  So that I can remember what the dive was like
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user: user) }

  scenario 'user sees dropzone on dive\'s show page', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'

    expect(page).to have_content('Drop files here to upload')
  end

  scenario 'user sees photo on show page after it is uploaded' do
    image = FactoryGirl.create(:image, dive: dive)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'

    expect(page).to have_css("img[src*='#{image.image.path}']")
  end
end
