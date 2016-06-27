class CreatePremia < ActiveRecord::Migration
  def change
    create_table :premia do |t|
      t.string :n_contrato
      t.string :img

      t.timestamps null: false
    end
  end
end
