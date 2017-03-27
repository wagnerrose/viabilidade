class AddColumnNomeFantasiaToEmpresa < ActiveRecord::Migration[5.0]
  def change
    add_column :empresas, :nome_fantasia, :string
    add_column :empresas, :email, :string
    add_column :empresas, :sap, :string
    add_column :empresas, :celular, :string
  end
end
