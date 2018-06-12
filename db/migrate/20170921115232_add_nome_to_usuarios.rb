class AddNomeToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :nome, :string
    add_column :usuarios, :regra, :integer
  end
end
