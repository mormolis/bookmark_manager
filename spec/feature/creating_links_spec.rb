feature "tests add link functionality" do
  scenario "the user adds a title, a link and tags to a form" do
    
    # # DataMapper::Logger.new($stdout, :debug)
    # Link.create(:url  => "https://google.co.uk", :title => 'Google')
    visit "/links/new"
    expect(page.status_code).to eq 200

    fill_in :title, with: "Makers academy website"
    fill_in :url, with: "http://makersacademy.com"
    fill_in :tags, with: "coding, education"

    click_button 'Save Link'

    expect(current_path).to eq '/links'
    
        within 'ul#links' do
          expect(page).to have_content('Makers academy website')
        end
  end
end