json.array!(@slider_servs) do |slider_serv|
  json.extract! slider_serv, :id, :img, :link
  json.url slider_serv_url(slider_serv, format: :json)
end
