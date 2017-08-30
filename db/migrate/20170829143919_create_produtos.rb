class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :tipo, :limit => 15
      t.string :fornecedor, :limit => 50
      t.integer :velocidade
      t.string :origem, :limit => 50
      t.string :uf_a, :limit => 2
      t.string :destino, :limit => 50
      t.string :uf_b, :limit => 2
      t.text :obs
      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
