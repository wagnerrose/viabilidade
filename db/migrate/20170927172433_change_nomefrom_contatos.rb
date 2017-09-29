class ChangeNomefromContatos < ActiveRecord::Migration[5.0]
  def up
    change_column :contatos, :nome, :string, :limit => 250
  end

  def down
    change_column :contatos, :nome, :string, :limit => 50
  end

end
