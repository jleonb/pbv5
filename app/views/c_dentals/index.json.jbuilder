json.array!(@c_dentals) do |c_dental|
  json.extract! c_dental, :id
  json.url c_dental_url(c_dental, format: :json)
end
