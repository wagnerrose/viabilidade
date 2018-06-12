class CreateBackofficeCircuitos < ActiveRecord::Migration[5.0]
  def change
    create_table :circuitos do |t|
      t.string :designacao, limit: 12
      t.string :descricao, limit: 250
      t.integer :servico
      t.integer :status
      t.integer :roteamento
      t.integer :asn
      t.integer :bandaContratada
      t.integer :bandaAtivada
      t.date :dataAtivacao
      t.string :contrato
      t.integer :sap
      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
