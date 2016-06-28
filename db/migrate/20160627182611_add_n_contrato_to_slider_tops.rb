class AddNContratoToSliderTops < ActiveRecord::Migration
  def change
    add_column :slider_tops, :n_contrato, :string
  end
end
