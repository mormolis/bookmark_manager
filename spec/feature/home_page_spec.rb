



feature "tests the homepage" do
  scenario "see the web pages title 'Bookmark Manager" do
    
    # DataMapper::Logger.new($stdout, :debug)
    Link.create(:url  => "https://google.co.uk", :title => 'Google')
    visit "/links"
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content("Google")
    end
  end
end

