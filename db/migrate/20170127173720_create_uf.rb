class CreateUf < ActiveRecord::Migration[5.0]
  def change
    create_table :uf do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
  end
end
