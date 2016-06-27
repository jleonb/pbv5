class AddInstitucionIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Institucion_id, :integer
  end
end
