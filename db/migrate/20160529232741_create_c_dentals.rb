class CreateCDentals < ActiveRecord::Migration
  def change
    create_table :c_dentals do |t|

      t.timestamps null: false
    end
  end
end
