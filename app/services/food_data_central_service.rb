class FoodDataCentralService

  def get_foods(food)
    get_json("/fdc/v1/search?api_key=#{ENV['FOOD_DATA_API_KEY']}\&generalSearchInput=#{food}")
  end

  private
    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def conn
      Faraday.new(url: "https://api.nal.usda.gov")
    end
end
