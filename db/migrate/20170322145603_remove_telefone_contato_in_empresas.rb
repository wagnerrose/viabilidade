class RemoveTelefoneContatoInEmpresas < ActiveRecord::Migration[5.0]
  def change
    remove_column :empresas, :telefone_contato
  end
end
