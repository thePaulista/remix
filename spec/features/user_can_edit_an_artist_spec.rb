require 'rails_helper'

feature "User can go click edit" do
  scenario "view updated artist successfully" do
    artist = Artist.create!(artist_attributes1)
    new_artist = "Crayon Pop"
    new_image_path = "http://0.soompi.io/wp-content/uploads/2012/11/crayonpop2.jpg"
    visit artist_path(artist)

    expect(page).to have_content("Spica")

    click_on "Edit"
    fill_in "Name", with: new_artist
    click_on "Update Artist"

    expect(page).to have_content(new_artist)
    expect(page).to_not have_content artist.name
    expect(page).to have_css("img[src=\"#{artist.image_path}\"]")
  end
end
