class AddImgToCDentals < ActiveRecord::Migration
  def change
    add_column :c_dentals, :img, :string
  end
end
