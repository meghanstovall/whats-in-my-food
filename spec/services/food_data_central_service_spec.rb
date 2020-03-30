require 'rails_helper'

describe "Food Data Central Service" do
  it "can connect to API and get list of foods with a certain ingredient" do
    food_service  = FoodDataCentralService.new

    food = "sweet potatoes"
    expect(food_service.get_foods(food).class).to eq(Hash)
    expect(food_service.get_foods(food)[:foods].class).to eq(Array)

    food = "apples"
    expect(food_service.get_foods(food).class).to eq(Hash)
    expect(food_service.get_foods(food)[:foods].class).to eq(Array)
  end
end
