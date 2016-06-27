json.array!(@users) do |user|
  json.extract! user, :id, :n_contrato, :rut, :nombre, :a_paterno, :a_materno, :email, :telefono, :sexo, :edad
  json.url user_url(user, format: :json)
end
