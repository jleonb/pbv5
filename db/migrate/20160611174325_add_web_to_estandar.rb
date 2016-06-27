class AddWebToEstandar < ActiveRecord::Migration
  def change
    add_column :estandars, :web, :string
  end
end
