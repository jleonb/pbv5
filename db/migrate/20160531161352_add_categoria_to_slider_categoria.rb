class AddCategoriaToSliderCategoria < ActiveRecord::Migration
  def change
    add_column :slider_categoria, :categoria, :string
  end
end
