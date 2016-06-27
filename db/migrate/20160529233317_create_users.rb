class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :n_contrato
      t.string :rut
      t.string :nombre
      t.string :a_paterno
      t.string :a_materno
      t.string :email
      t.string :telefono
      t.string :sexo
      t.string :edad

      t.timestamps null: false
    end
  end
end
