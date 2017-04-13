class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :endereco
      t.string :cidade
      t.string :uf
      t.string :nome_contato
      t.string :telefone_contato
      t.string :cnpj

      t.timestamps
    end
  end
end
