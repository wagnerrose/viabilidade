class RemoveColumnTipoEstacaofromEstacao < ActiveRecord::Migration[5.0]
  def change
    remove_column :estacoes, :tipoEstacao, :string
  end
end
