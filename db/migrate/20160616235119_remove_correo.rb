class RemoveCorreo < ActiveRecord::Migration
  def self.up
    remove_column :users, :correo
  end
end
