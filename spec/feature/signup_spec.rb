feature 'Sign up' do
  scenario 'User can sign up using a form' do 
    visit('/signup')
    fill_in 'email', with: "georgelovesgeorge@george.george"
    fill_in 'password', with: "iamgeorge"
    click_button "Sign up"
    
    expect(page).to have_current_path('/links')
    # expect(page).to have_content("Welcome! georgelovesgeorge@george.george")

  end 
end 