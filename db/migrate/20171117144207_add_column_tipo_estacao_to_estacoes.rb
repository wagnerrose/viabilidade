class AddColumnTipoEstacaoToEstacoes < ActiveRecord::Migration[5.0]
  def change
    add_column :estacoes, :tipoEstacao, :integer
  end
end
