class CreateEstandars < ActiveRecord::Migration
  def change
    create_table :estandars do |t|
      t.string :n_contrato
      t.string :categoria
      t.string :caluga
      t.string :nombre
      t.string :descripcion
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :img4
      t.string :img5
      t.string :direccion
      t.string :telefono
      t.string :correo
      t.string :mapa
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :contacto

      t.timestamps null: false
    end
  end
end
