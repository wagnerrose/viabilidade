class CreateCircuitodados < ActiveRecord::Migration[5.0]
  def change
    create_table :circuitodados do |t|
      t.references :circuito, foreign_key: true
      t.integer :pta
      t.string :municipio
      t.string :uf
      t.integer :estacaoAcesso
      t.integer :estacaoCliente
      t.integer :switchAcesso
      t.integer :pontoEntrega
      t.integer :tipoAcesso
      t.string :fornecedorAcesso
      t.string :fornecedorInfo

      t.timestamps
    end
  end
end
