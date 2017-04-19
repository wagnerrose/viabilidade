class CreateEstacoes < ActiveRecord::Migration[5.0]
  def change
    create_table :estacoes do |t|
      t.string :pop
      t.string :nome
      t.string :endereco
      t.string :cidade
      t.string :uf
      t.string :tipo
      t.string :cedente
      t.decimal :latitude,  precision: 15, scale: 13
      t.decimal :longitude,  precision: 15, scale: 13

      t.timestamps
    end
  end
end
