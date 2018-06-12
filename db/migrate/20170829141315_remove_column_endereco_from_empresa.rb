class RemoveColumnEnderecoFromEmpresa < ActiveRecord::Migration[5.0]
  def change
      remove_column :empresas, :endereco
      remove_column :empresas, :cidade
      remove_column :empresas, :uf
      remove_column :empresas, :nome_contato
      remove_column :empresas, :celular
      remove_column :empresas, :fixo
      remove_column :empresas, :cep
      remove_column :empresas, :email
  end
end
