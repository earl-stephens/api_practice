require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit the root path" do
    it "I can retrieve LOTR quotes from the corresponding search field" do
      visit root_path

      fill_in "Lord of the Rings quotes Search", with: "5cd95395de30eff6ebccde5b"
      click_button "LOTR Search"

      expect(current_path).to eq('/quotes')
      expect(page).to have_content('1010 results')
      expect(page).to have_content('First 10 results')
    end
  end
end

# As a user
# When I visit '/'
# And fill in the 'Lord of the Rings quotes Search' box
# With movie id '5cd95395de30eff6ebccde5b',
# And click on 'Search',
# Then I should be on page '/quotes'.
# I should see a total number of quotes (1010)
# Returned by the search.
# Then I should see a list of the first 10 quotes
# And for each quote I should see:
# -quote id
# -dialog
# -movie id
# -character id
