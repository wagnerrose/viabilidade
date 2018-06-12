class CreateLinkequipamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :linkequipamentos do |t|
      t.string :intLocal
      t.string :eqtoDestino
      t.string :intDestino
      t.integer :vlan
      t.integer :sentido
      t.integer :velocidade
      t.references :conexao, foreign_key: true

      t.timestamps
    end
  end
end
