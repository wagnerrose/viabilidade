class ChangeColumnStatusFromEquipamentos < ActiveRecord::Migration[5.0]
  def change
    change_column :equipamentos, :status, :integer
    change_column :equipamentos, :tipo, :integer

  end
end
