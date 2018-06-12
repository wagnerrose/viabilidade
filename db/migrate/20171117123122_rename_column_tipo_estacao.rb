class RenameColumnTipoEstacao < ActiveRecord::Migration[5.0]
  def change
        rename_column :estacoes, :tipo, :tipoEstacao
  end
end
