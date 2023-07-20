require "rails_helper"

RSpec.describe "Merchants Index API Page" do
  describe "I visit '/merchants" do
   it "I should see a list of merchant names with a link to their show page" do
    visit merchants_path
# save_and_open_page
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link( "Wisozk, Hoeger and Bosco")

    click_link"Schroeder-Jerde"
    expect(current_path).to eq(merchant_path(1))
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