class CreateTableLocalidades < ActiveRecord::Migration[5.0]
  def change
    create_table :localidades do |t|
      t.string :uf
      t.string :sigla_cnl
      t.string :cod_cnl
      t.string :localidade
      t.string :municipio
      t.string :cod_cnl
      t.decimal :latitude,   precision: 15, scale: 13
      t.decimal :longitude,  precision: 15, scale: 13

      t.timestamps
    end
  end
end
