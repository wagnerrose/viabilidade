class CreateSolicitacaes < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitacaes do |t|
      t.string :numero_vt
      t.references :cliente_id, foreign_key: true
      t.date :data_solicitacao
      t.string :solicitante
      t.string :analista
      t.string :servico
      t.integer :banda
      t.string :endereco_a
      t.string :localidade_a
      t.string :uf_a
      t.string :endereco_b
      t.string :localidade_b
      t.string :uf_b
      t.string :resultado_vt

      t.timestamps
    end
  end
end
