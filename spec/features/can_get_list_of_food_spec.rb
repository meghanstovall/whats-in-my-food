


# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients

require 'rails_helper'

describe "FoodData Central API" do
  it "user can get a list of food that have a certain ingredient" do

    visit "/"

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq("/foods")
  end
end
