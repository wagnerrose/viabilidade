class CreateLocalidades < ActiveRecord::Migration[5.0]
  def change
    create_table :localidades do |t|
      t.string :nome
      t.string :uf
      t.string :cod_localidade

      t.timestamps
    end
  end
end
