json.array!(@c_servs) do |c_serv|
  json.extract! c_serv, :id, :img, :link
  json.url c_serv_url(c_serv, format: :json)
end
