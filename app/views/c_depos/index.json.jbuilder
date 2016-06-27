json.array!(@c_depos) do |c_depo|
  json.extract! c_depo, :id, :img, :link
  json.url c_depo_url(c_depo, format: :json)
end
