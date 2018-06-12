class RenameColumnStatusInEquipamentos < ActiveRecord::Migration[5.0]
  def change
        rename_column :equipamentos, :status, :statusEquipamento
        rename_column :equipamentos, :tipo, :tipoEquipamento

  end
end
