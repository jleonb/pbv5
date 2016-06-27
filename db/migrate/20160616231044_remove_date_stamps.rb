class RemoveDateStamps < ActiveRecord::Migration
  def self.up
    remove_column :institucions, :created_at
    remove_column :institucions, :updated_at
  end
end
