class CreateAnalistas < ActiveRecord::Migration[5.0]
  def change
    create_table :analistas do |t|
      t.string :nome
      t.string :email
      t.string :id_regional
      t.string :fone_contato
      t.string :funcao

      t.timestamps
    end
  end
end
