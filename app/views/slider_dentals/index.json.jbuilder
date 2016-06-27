json.array!(@slider_dentals) do |slider_dental|
  json.extract! slider_dental, :id, :name, :img, :link
  json.url slider_dental_url(slider_dental, format: :json)
end
