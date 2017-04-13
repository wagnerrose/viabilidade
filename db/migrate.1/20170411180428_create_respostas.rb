class CreateRespostas < ActiveRecord::Migration[5.0]
  def change
    create_table :respostas do |t|
      t.references :numero_vt_id, foreign_key: true
      t.string :tipo
      t.string :estrutura
      t.text :descricao
      t.integer :prazo
      t.decimal :capex, precision: 10, scale: 2
      t.decimal :opex_instalacao,  precision: 10, scale: 2
      t.decimal :opex_mensal,  precision: 10, scale: 2
      t.string :resultado_vt

      t.timestamps
    end
  end
end
