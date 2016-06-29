class AddInstitucionIdToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :institucion_id, :string
  end
end
