class CreateEstandarDestacados < ActiveRecord::Migration
  def change
    create_table :estandar_destacados do |t|
      t.string :img
      t.string :link

      t.timestamps null: false
    end
  end
end
