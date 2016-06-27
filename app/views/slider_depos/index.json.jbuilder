json.array!(@slider_depos) do |slider_depo|
  json.extract! slider_depo, :id, :img, :link
  json.url slider_depo_url(slider_depo, format: :json)
end
