require 'rails_helper'

feature "User can see error message" do
  scenario "when creating an incomplete song" do
    artist = create(:artist)

    visit artist_path(artist)

    click_on "New song"
    fill_in "song_title", with: " "
    click_on "Create Song"

    expect(page).to have_content("Title can't be blank")
  end
end
