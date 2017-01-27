class CreatePop < ActiveRecord::Migration[5.0]
  def change
    create_table :pop do |t|
      t.string :nome
      t.string :designacao
      t.string :detentor
      t.string :uf
      t.string :cod_localidade

      t.timestamps
    end
  end
end
