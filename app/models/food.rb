class Food

  def initialize(attributes)
    gtin_upc = attributes[:gtinUpc]
    description = attributes[:description]
    brand_owner = attributes[:brandOwner]
    ingredients = attributes[:ingredients]
  end
end
