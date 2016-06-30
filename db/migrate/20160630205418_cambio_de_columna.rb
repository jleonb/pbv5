class CambioDeColumna < ActiveRecord::Migration
  def self.up
    rename_column :slider_tops, :n_contrato, :institucion_id
  end
end