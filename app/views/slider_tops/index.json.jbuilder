json.array!(@slider_tops) do |slider_top|
  json.extract! slider_top, :id, :link, :img
  json.url slider_top_url(slider_top, format: :json)
end
