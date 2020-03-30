class FoodsController < ApplicationController
  def index
    food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["FOOD_DATA_API_KEY"]
    end

    response = conn.get("/fdc/v1/search?api_key=#{ENV['FOOD_DATA_API_KEY']}\&generalSearchInput=#{food}")

    json = JSON.parse(response.body, symbolize_names: true)
    @total = json[:totalHits]

    json1 = JSON.parse(response.body, symbolize_names: true)
    items = json1[:foods]

    @food_items = items.map do |item|
      Food.new(item)
    end[0..9]
  end
end
