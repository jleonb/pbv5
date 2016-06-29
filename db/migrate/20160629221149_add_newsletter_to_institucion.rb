class AddNewsletterToInstitucion < ActiveRecord::Migration
  def change
    add_column :institucions, :newsletter, :string
  end
end
