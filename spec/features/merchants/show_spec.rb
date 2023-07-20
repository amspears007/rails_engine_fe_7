require "rails_helper"

RSpec.describe "Merchants Show API Page" do
  describe"I visit '/merchants/:id" do
    it "I should see a list of items that merchant sells" do
      visit merchant_path(1)
      save_and_open_page

      expect(page).to have_content("Items Sold")
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Provident At")
    end
  end
end
# User Story - Merchants
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.