class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.string :logradouro, :limit => 250
      t.string :cidade, :limit => 50
      t.string :uf, :limit => 2
      t.string :cep, :limit => 8
      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
