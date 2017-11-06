class ChangeColumnDgoFromCircuitoDados < ActiveRecord::Migration[5.0]
  def change
    change_column :circuitodados, :dgo, :string
    change_column :circuitodados, :abordagem, :string
  end
end
