class AddColumnEmpresaInSolicitacao < ActiveRecord::Migration[5.0]
  def change
    add_reference :solicitacaes, :empresa, foreign_key: true
  end
end
