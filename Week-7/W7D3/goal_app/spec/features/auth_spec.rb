require 'spec_helper'
require 'rails_helper'

feature 'the signup process', type: :feature do
  background :each do 
    visit new_user_path
    end

    scenario 'has a user signup page' do
        # save_and_open_page
        expect(page).to have_content('Form to create a user')
    end

    scenario 'redirects user to the users show page and displays username on success' do
        fill_in 'Username', with: 'capy'
        fill_in 'Password', with: 'password'
        click_button 'Create user'
        # save_and_open_page
        expect(page).to have_content('capy')
        user = User.find_by(username: 'capy')
        expect(current_url).to eq(user_url(user))
    end

    feature 
end