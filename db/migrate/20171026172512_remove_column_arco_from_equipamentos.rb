class RemoveColumnArcoFromEquipamentos < ActiveRecord::Migration[5.0]
  def change
    remove_column :equipamentos, :arco, :string
    remove_column :equipamentos, :cluster, :string
  end
end
