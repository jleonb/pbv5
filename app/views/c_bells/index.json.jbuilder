json.array!(@c_bells) do |c_bell|
  json.extract! c_bell, :id, :img, :link
  json.url c_bell_url(c_bell, format: :json)
end
