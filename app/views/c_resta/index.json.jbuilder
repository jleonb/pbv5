json.array!(@c_resta) do |c_restum|
  json.extract! c_restum, :id, :img, :link
  json.url c_restum_url(c_restum, format: :json)
end
