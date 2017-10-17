feature "tests the homepage" do
  scenario "see the web pages title 'Bookmark Manager" do
    visit "/"
    expect(page).to have_content("Bookmark Manager")
  end
end