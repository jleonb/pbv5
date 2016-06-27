class AddLinkToCDentals < ActiveRecord::Migration
  def change
    add_column :c_dentals, :link, :string
  end
end
