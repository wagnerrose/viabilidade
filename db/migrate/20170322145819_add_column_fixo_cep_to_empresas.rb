class AddColumnFixoCepToEmpresas < ActiveRecord::Migration[5.0]
  def change
      add_column :empresas, :fixo, :string
      add_column :empresas, :cep, :string
  end
end
