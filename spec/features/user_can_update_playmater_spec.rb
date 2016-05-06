require 'rails_helper'

feature "User can go to playmaster index" do
  scenario "click the edit and update playmaster" do
    playmaster = create(:playmaster_with_songs)
    first, second, third = playmaster.songs
    new_song = create(:song, title: "Dancing Queen")

    visit playmaster_path(playmaster)
    click_on "Edit playmaster"
    uncheck("song-#{first.id}")
    check("song-#{new_song.id}")
    click_on "Update Playmaster"

    expect(page).to have_content(playmaster.name)
    expect(page).to_not have_content(first.title)
    expect(page).to have_content(new_song.title)
  end
end
