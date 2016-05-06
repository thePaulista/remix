require 'rails_helper'

feature "User can see all playmaster" do
  scenario "in the index page and see link" do
    playmaster1, playmaster2 = create_list(:playmaster, 2)

    visit playmasters_path

    expect(page).to have_content("All Playmasters")
    expect(page).to have_content(playmaster1.name)
    expect(page).to have_content(playmaster2.name)

    click_link playmaster1.name

    within("h2") do
      expect(page).to have_content(playmaster1.name)
    end
  end
end
