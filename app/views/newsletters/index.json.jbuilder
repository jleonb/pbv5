json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :n_contrato, :img, :video
  json.url newsletter_url(newsletter, format: :json)
end
