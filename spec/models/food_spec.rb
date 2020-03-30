require 'rails_helper'

RSpec.describe Food, type: :model do

  it "exists" do
    attributes = {
      gtinUpc: "070560951975",
      description: "SWEET POTATOES",
      brandOwner: "The Pictsweet Company",
      ingredients: "SWEET POTATOES."
    }

    food = Food.new(attributes)

    expect(food).to be_a Food
    expect(food.gtin_upc).to eq("070560951975")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand_owner).to eq("The Pictsweet Company")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
