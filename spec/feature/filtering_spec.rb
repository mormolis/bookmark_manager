feature "testing filtering" do
  scenario "using tags to filter links" do
    visit("/links/new")
    fill_in :title, with: "Bubble_web page"
    fill_in :url, with: "bubbleboo.com"
    fill_in :tags, with: "bubble"

    click_button 'Save Link'

    visit('/tags/bubble')
    expect(page).to have_content("bubble")
    expect(page).not_to have_content("coding")
  end
end


