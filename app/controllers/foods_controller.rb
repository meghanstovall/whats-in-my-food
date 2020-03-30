class FoodsController < ApplicationController
  def index
    service = FoodDataCentralService.new
    result = service.get_foods(params[:q])

    @total = result[:totalHits]
    @food_items = result[:foods].map do |item|
      Food.new(item)
    end[0..9]
  end
end
