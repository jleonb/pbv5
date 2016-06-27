json.array!(@institucions) do |institucion|
  json.extract! institucion, :id, :n_contrato, :nombre, :rut, :direccion, :comuna, :ciudad, :contacto, :telefono, :email
  json.url institucion_url(institucion, format: :json)
end
