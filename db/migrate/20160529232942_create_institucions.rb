class CreateInstitucions < ActiveRecord::Migration
  def change
    create_table :institucions do |t|
      t.string :n_contrato
      t.string :nombre
      t.string :rut
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :contacto
      t.string :telefono
      t.string :email

      t.timestamps null: false
    end
  end
end
