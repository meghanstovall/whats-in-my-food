class FoodDataCentralService


  private

  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["FOOD_DATA_API_KEY"]
    end
  end

  response = conn.get("/fdc/v1/search?api_key=#{ENV['FOOD_DATA_API_KEY']}\&generalSearchInput=#{food}")
end
