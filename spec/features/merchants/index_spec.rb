require "rails_helper"

describe "Merchants Index API Page" do
   it "I visit 'api/v1/merchants and should see a list of merchant names with a link to their show page " do
    visit "/api/v1/merchants"
save_and_open_page
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content( "Wisozk, Hoeger and Bosco")
  end
end

# User Story - Merchants
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.