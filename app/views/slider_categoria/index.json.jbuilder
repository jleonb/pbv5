json.array!(@slider_categoria) do |slider_categorium|
  json.extract! slider_categorium, :id, :img, :link
  json.url slider_categorium_url(slider_categorium, format: :json)
end
