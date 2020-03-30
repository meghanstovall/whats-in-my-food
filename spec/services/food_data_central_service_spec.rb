require 'rails_helper'

describe "Food Data Central Service" do
  it "can get list of foods from API" do
    food_service  = FoodDataCentralService.new

    expect(food_service.get_foods("sweet potatoes").class).to eq(Hash)
    expect(food_service.get_foods("sweet potatoes")[:foods].class).to eq(Array)
  end
end
