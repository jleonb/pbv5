json.array!(@c_restaurants) do |c_restaurant|
  json.extract! c_restaurant, :id, :img, :link.string
  json.url c_restaurant_url(c_restaurant, format: :json)
end
