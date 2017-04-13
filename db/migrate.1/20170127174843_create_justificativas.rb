class CreateJustificativas < ActiveRecord::Migration[5.0]
  def change
    create_table :justificativas do |t|
      t.string :nome
      t.string :cod_justificativa
      t.string :tipo

      t.timestamps
    end
  end
end
