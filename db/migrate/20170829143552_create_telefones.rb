class CreateTelefones < ActiveRecord::Migration[5.0]
  def change
    create_table :telefones do |t|
      t.string :telefone, :limit => 12
      t.references :contato, foreign_key: true

      t.timestamps
    end
  end
end
