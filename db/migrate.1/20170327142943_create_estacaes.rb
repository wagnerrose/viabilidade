class CreateEstacaes < ActiveRecord::Migration[5.0]
  def change
    create_table :estacaes do |t|
      t.string :estacao
      t.string :nome
      t.string :cidade
      t.string :status
      t.string :cedente
      t.string :tipo
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
