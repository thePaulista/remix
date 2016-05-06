require 'rails_helper'

#feature "User can go to playmaster" do
#  scenario "see a link to individual songs" do
#    song_one, song_two, song_three = create_list(:song, 3)
#
#    playmaster_name = "My KPop"
#
#    visit playmasters_path
#    click_on "New playmaster"
#    fill_in "playmaster_name", with: playmaster_name
#
#    check("song-#{song_one.id}")
#    check("song-#{song_three.id}")
#    click_on "Create Playmaster"
#
#    expect(page).to have_content playmaster_name
#
#    click_on song_one.title
#
#    expect(page).to have_content(song_one.title)
#  end
#end
