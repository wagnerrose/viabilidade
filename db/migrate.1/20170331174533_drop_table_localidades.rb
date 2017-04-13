class DropTableLocalidades < ActiveRecord::Migration[5.0]
  def change
    drop_table :localidades do |t|
      t.string   "nome"
      t.string   "uf"
      t.string   "cod_localidade"
      t.datetime "created_at",     null: false
      t.datetime "updated_at",     null: false
    end
  end
end
