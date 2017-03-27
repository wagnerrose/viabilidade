class AddColumnRazaoToEmpresas < ActiveRecord::Migration[5.0]
  def change
    add_column :empresas, :razao, :string
  end
end
