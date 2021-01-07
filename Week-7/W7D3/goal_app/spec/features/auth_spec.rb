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
end

feature 'logging in' do
  it 'has a sign in page' do
    visit new_session_path
    expect(page).to have_content 'Sign In'
  end

  it 'takes a username and password' do
    visit new_session_path
    expect(page).to have_content 'Username'
    expect(page).to have_content 'Password'
  end

  context 'on a successful save' do
    it 'logs in a user and takes them to users index on success' do
      User.create!(username: 'jack_bruce', password: 'abcdef')

      # Sign in as newly created user
      sign_in_as_jack_bruce
      expect(current_path).to eq(users_path)
    end
  end
  
  context 'on a failed save' do
    before :each do
      visit new_session_path
      fill_in 'Username', with: 'LillyBilly'
      click_button 'Sign In'
    end

    it 'renders errors to the user' do
      expect(page).to have_content "Invalid username or password"
    end
  end
end


feature 'logging out' do
  scenario 'begins with a logged out state'

  scenario 'doesn\'t show username on the homepage after logout'

end