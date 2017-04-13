class RemoveNumeroVtIdFromRespostas < ActiveRecord::Migration[5.0]
  def change
    remove_column :respostas, :numero_vt_id_id
  end
end
