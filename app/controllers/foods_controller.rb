class FoodsController < ApplicationController
  def index
    food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["FOOD_DATA_API_KEY"]
      faraday.params['q'] = params['q']
      faraday.params['max'] = 10
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get('/ndb/search/')

    total_items = JSON.parse(response.body, symbolize_names: true)[:list][:total]
    items = JSON.parse(response.body, symbolize_names: true)[:list][:item]

    require "pry"; binding.pry
  end
end
