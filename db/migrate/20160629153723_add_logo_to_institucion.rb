class AddLogoToInstitucion < ActiveRecord::Migration
  def change
    add_column :institucions, :logo, :string
  end
end
