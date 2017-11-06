class CreateConexoes < ActiveRecord::Migration[5.0]
  def change
    create_table :conexoes do |t|
      t.integer :numArco
      t.string :nomeCluster
      t.references :equipamento, foreign_key: true

      t.timestamps
    end
  end
end
