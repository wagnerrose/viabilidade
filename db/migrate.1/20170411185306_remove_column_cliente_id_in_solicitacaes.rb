class RemoveColumnClienteIdInSolicitacaes < ActiveRecord::Migration[5.0]
  def change
    remove_column :solicitacaes, :numero_vt_id_id
  end
end
