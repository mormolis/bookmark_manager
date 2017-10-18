require 'spec_helper'

feature "creating links" do
  scenario "i can create a new links" do
    visit "/links/new"
      fill_in :url, with: 'https://google.co.uk'
      fill_in :title, with: 'Google'
    click_button 'Create link'
    # we expect to be redirected back to the links page
    expect(current_path).to eq '/links'

    within 'ul#links' do
      # expect(page).to have_content 'https://google.co.uk'
      expect(page).to have_content('Google')
    end
  end
end
