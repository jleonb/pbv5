json.array!(@estandar_destacados) do |estandar_destacado|
  json.extract! estandar_destacado, :id, :img, :link
  json.url estandar_destacado_url(estandar_destacado, format: :json)
end
