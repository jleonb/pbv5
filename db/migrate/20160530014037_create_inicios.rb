class CreateInicios < ActiveRecord::Migration
  def change
    create_table :inicios do |t|

      t.timestamps null: false
    end
  end
end
