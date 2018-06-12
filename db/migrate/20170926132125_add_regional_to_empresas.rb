class AddRegionalToEmpresas < ActiveRecord::Migration[5.0]
  def change
    add_column :empresas, :regional, :string
  end
end
