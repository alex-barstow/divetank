require 'rails_helper'

feature 'user uploads photo to dive', %(
  As an authenticated user
  I want to be able to add photos to a dive
  So that I can remember what the dive was like
) do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:dive) { FactoryGirl.create(:dive, user: user) }

  scenario 'user can add a video by submitting its url' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'
    click_link 'View Details'
    fill_in 
  end

  scenario '' do

  end
end
