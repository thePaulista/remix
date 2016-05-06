require 'rails_helper'

feature "User creates a playmaster" do
  scenario "they see the page for the individual playlsit" do
    song_one, song_two, song_three = create_list(:song, 3)

    playmaster_name = "My KPop"

    visit playmasters_path
    click_on "New playmaster"
    fill_in "playmaster_name", with: playmaster_name

    check("song-#{song_one.id}")
    check("song-#{song_three.id}")
    click_on "Create Playmaster"

    expect(page).to have_content playmaster_name

    within("li:first") do
      expect(page).to have_link song_one.title, href: song_path(song_one)
    end

    within("li:last") do
      expect(page).to have_link song_three.title, href: song_path(song_three)
    end
  end
end
