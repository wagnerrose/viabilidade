class ChangeColumnEstacaoclienteFromCircuitoDados < ActiveRecord::Migration[5.0]
  def change
    change_column :circuitodados, :estacaoAcesso, :string
    change_column :circuitodados, :estacaoCliente, :string
    change_column :circuitodados, :switchAcesso, :string
    change_column :circuitodados, :switchCliente, :string
  end
end
