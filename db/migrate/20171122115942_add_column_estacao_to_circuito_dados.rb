class AddColumnEstacaoToCircuitoDados < ActiveRecord::Migration[5.0]
  def change
    add_reference :circuitodados, :estacao, foreign_key: true
    add_reference :circuitodados, :equipamento, foreign_key: true
  end
end
