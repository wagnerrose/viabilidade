class AddColumnCodigoToServicos < ActiveRecord::Migration[5.0]
  def change
    add_column :servicos, :codigo, :string
  end
end
