class CreateAnalises < ActiveRecord::Migration[5.0]
  def change
    create_table :analises do |t|
      t.string :analise
      t.date :dataStatus
      t.references :solicitacao

      t.timestamps
    end
  end
end
