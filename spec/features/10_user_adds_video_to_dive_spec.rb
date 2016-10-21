require 'rails_helper'

feature 'user adds a video to dive', %(
  As an authenticated user
  I want to be able to add videos to a dive
  So that I can remember and share what the dive was like
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user: user) }

  scenario 'user can add a video by submitting its url', js: true do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'
    fill_in 'video-url', with: 'https://www.youtube.com/watch?v=U-VCFG8yJ5w'
    click_button 'Submit'
    visit dive_path(dive)

    expect(page).to have_css("iframe[src*='https://www.youtube.com/embed/U-VCFG8yJ5w']")
  end
end
