class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :email, :correo
  end
end
