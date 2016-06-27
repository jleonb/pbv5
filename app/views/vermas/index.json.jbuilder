json.array!(@vermas) do |verma|
  json.extract! verma, :id
  json.url verma_url(verma, format: :json)
end
