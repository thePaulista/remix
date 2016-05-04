require 'rails_helper'

feature "User can delete an artist" do
  scenario "and be redirected to index" do
    artist = Artist.create!(artist_attributes1)
    artist1 = Artist.create!(artist_attributes2)

    visit artist_path(artist)

    expect(page).to have_content("Spica")
    click_on "Delete"

    expect(page).to have_content("All Artists")
    expect(page).to_not have_content("Spica")
    expect(page).to have_content("IU")
 end
end
