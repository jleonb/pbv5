json.array!(@estandars) do |estandar|
  json.extract! estandar, :id, :n_contrato, :categoria, :caluga, :nombre, :descripcion, :img1, :img2, :img3, :img4, :img5, :direccion, :telefono, :correo, :mapa, :facebook, :twitter, :instagram, :contacto
  json.url estandar_url(estandar, format: :json)
end
