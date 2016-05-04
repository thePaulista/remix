require 'rails_helper'

feature "User can view all artist" do
  scenario "when they go to index" do
    artist1 = Artist.create!(artist_attributes1)
    artist2 = Artist.create!(artist_attributes2)

    visit artists_path

    within("h2") do
      expect(page).to have_content("All Artists")
    end

    expect(page).to have_content("Spica")
    #expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
    expect(page).to have_content("IU")
  end
end
