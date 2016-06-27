class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :n_contrato
      t.string :img
      t.string :video

      t.timestamps null: false
    end
  end
end
