feature "multiple tags per link" do
  scenario "user inputs multiple tags" do
    visit("/links/new")
    fill_in :title, with: "wikipedia"
    fill_in :url, with: "wikipedia.org"
    fill_in :tags, with: "info favourite"
    click_button("Save Link")
    visit("/tags/info")
    expect(page).to have_content("wikipedia.org")
    visit("/tags/favourite")
    expect(page).to have_content("wikipedia.org")
  end
end
