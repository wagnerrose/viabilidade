class ChangeColumnAbordagemFromCircuitoDados < ActiveRecord::Migration[5.0]
  def change
    change_column :circuitodados, :dgo, :integer
    change_column :circuitodados, :abordagem, :integer
  end
end
