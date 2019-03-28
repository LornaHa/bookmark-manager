feature 'Viewing Bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'so a user can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "https://www.rhs.org.uk"
    expect(page).to have_content "https://rebellion.earth/"
    expect(page).to have_content "https://friendsoftheearth.uk"
  end
end
