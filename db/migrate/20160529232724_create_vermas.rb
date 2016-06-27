class CreateVermas < ActiveRecord::Migration
  def change
    create_table :vermas do |t|

      t.timestamps null: false
    end
  end
end
