class ChangeColumnTelefoneInTelefones < ActiveRecord::Migration[5.0]
  def up
    change_column :telefones, :telefone, :string, :limit => 50
  end

  def down
    change_column :telefones, :telefone, :string, :limit => 12
  end
end
