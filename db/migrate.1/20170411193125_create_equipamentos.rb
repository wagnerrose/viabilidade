class CreateEquipamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :equipamentos do |t|
      t.string :designacao
      t.text :descricao
      t.string :tipo
      t.string :enderecamento
      t.string :firmware
      t.references :estacao, foreign_key: true
      t.string :status
      t.string :arco
      t.string :cluster

      t.timestamps
    end
  end
end
