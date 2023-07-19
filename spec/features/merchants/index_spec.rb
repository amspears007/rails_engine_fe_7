require "rails_helper"

describe "Merchants Index API Page" do
   it "I visit 'api/v1/merchants and should see a list of merchant names with a link to their show page " do
    visit "/api/v1/merchants"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content( "Wisozk, Hoeger and Bosco")
  end
end