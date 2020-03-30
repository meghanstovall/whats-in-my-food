



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

    expect(page).to have_content('32696 Results')
    expect(page).to have_css('.foods', count: 10)
    expect(page).to have_css('#gtin', count: 10)
    expect(page).to have_css('#description', count: 10)
    expect(page).to have_css('#owner', count: 10)
    expect(page).to have_css('#ingredients', count: 10)
  end
end
