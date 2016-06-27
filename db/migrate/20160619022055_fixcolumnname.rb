class Fixcolumnname < ActiveRecord::Migration
  def change
  	rename_column :users, :Institucion_id, :institucion_id
  end
end
