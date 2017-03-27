class RemoveIdClienteInVt < ActiveRecord::Migration[5.0]
  def change
        remove_column :vt, :id_cliente
  end
end
