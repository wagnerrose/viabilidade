class RemoveColumnCodigoInServicos < ActiveRecord::Migration[5.0]
  def change
    remove_column :servicos, :codigo
  end
end
