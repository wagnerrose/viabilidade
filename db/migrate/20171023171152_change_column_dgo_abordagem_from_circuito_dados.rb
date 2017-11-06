class ChangeColumnDgoAbordagemFromCircuitoDados < ActiveRecord::Migration[5.0]
  def change
    change_column :circuitodados, :dgo, :string
    change_column :circuitodados, :abordagem, :string
    change_column :circuitodados, :tipoAcesso, :string
    change_column :circuitodados, :pontoEntrega, :string
  end
end
