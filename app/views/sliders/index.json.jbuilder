json.array!(@sliders) do |slider|
  json.extract! slider, :id, :img, :link
  json.url slider_url(slider, format: :json)
end
