class Dope < ActiveRecord::Migration
  def change
  	rename_column :newsletters, :n_contrato, :institucion_id
  end
end
