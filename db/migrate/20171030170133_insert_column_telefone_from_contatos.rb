class InsertColumnTelefoneFromContatos < ActiveRecord::Migration[5.0]
  def change
    add_column :contatos, :telefone, :string
  end
end
