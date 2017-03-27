class RemoveColumnNomeInEmpresas < ActiveRecord::Migration[5.0]
  def change
    remove_column :empresas, :nome
  end
end
