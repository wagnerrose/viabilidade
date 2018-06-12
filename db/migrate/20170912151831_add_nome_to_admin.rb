class AddNomeToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admin, :nome, :string
    add_column :admin, :regra, :integer
  end
end
