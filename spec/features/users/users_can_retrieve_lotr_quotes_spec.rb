require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit the root path" do
    it "I can retrieve LOTR quotes from the corresponding search field" do
      visit root_path

      fill_in "Lord of the Rings quotes Search", with: "5cd95395de30eff6ebccde5b"
      click_button "LOTR Search"

      expect(current_path).to eq('/quotes')
      expect(page).to have_content('1010 results')
      expect(page).to have_content('First 10 results:')

      within "#quote-5cd96e05de30eff6ebcce9b8" do
        expect(page).to have_content("ID: 5cd96e05de30eff6ebcce9b8")
        expect(page).to have_content("Sauron's wrath will be terrible, his retribution swift.")
        expect(page).to have_content("Movie ID: 5cd95395de30eff6ebccde5b")
        expect(page).to have_content("Character ID: 5cd99d4bde30eff6ebccfea0")
      end
    end
  end
end
