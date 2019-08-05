require 'rails_helper'

RSpec.describe "As a User" do
  describe "when I visit root path" do
    it "I can retrieve national parks for a given state" do
      visit root_path

      fill_in "National Park Service Search", with: "CA"
      click_button "NP Search"

      expect(current_path).to eq('/parks')
      expect(page).to have_content('National Parks: 33')
      within "#national-park-1" do
        expect(page).to have_content('Name: ')
        expect(page).to have_content('Park code: ')
        expect(page).to have_content('Designation: ')
        expect(page).to have_content('Link: ')
      end

    end
  end
end

# As a user
# When I visit '/'
# And fill in the 'National Park Service Search' box
# With state abbreviation 'CA',
# And click on 'Search',
# Then I should be on page '/parks'.
# I should see a total number of parks (33)
# Returned by the search.
# Then I should see a list of the first 5 parks
# And for each park I should see:
# -park code
# -full name
# -url
# -designation
