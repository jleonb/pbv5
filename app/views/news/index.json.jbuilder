json.array!(@news) do |news|
  json.extract! news, :id, :institucion_id, :img, :link
  json.url news_url(news, format: :json)
end
