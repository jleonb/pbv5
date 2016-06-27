json.array!(@slider_resta) do |slider_restum|
  json.extract! slider_restum, :id, :img, :link
  json.url slider_restum_url(slider_restum, format: :json)
end
