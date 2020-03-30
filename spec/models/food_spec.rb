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

  end
end
