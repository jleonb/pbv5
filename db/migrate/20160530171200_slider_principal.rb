class SliderPrincipal < ActiveRecord::Migration
  def change
    change_column :slider_principals, :link, :string
  end
end
