json.array!(@slider_restaurants) do |slider_restaurant|
  json.extract! slider_restaurant, :id, :img, :link.string
  json.url slider_restaurant_url(slider_restaurant, format: :json)
end
