class Food

  attr_reader :gtin_upc, :description, :brand_owner, :ingredients

  def initialize(attributes)
    require "pry"; binding.pry
    @gtin_upc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
