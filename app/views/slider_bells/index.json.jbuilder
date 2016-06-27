json.array!(@slider_bells) do |slider_bell|
  json.extract! slider_bell, :id, :img, :link
  json.url slider_bell_url(slider_bell, format: :json)
end
