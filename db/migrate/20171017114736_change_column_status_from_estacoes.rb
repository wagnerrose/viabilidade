class ChangeColumnStatusFromEstacoes < ActiveRecord::Migration[5.0]
  def change
    change_column :estacoes, :status, :integer
  end
end
