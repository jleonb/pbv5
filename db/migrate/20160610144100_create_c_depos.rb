class CreateCDepos < ActiveRecord::Migration
  def change
    create_table :c_depos do |t|
      t.string :img
      t.string :link

      t.timestamps null: false
    end
  end
end
