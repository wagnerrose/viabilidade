class CreateContatos < ActiveRecord::Migration[5.0]
  def change
    create_table :contatos do |t|
      t.string :nome, :limit => 50
      t.string :sobrenome, :limit => 50
      t.text :obs
      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
