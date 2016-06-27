class CreateCResta < ActiveRecord::Migration
  def change
    create_table :c_resta do |t|
      t.string :img
      t.string :link

      t.timestamps null: false
    end
  end
end
