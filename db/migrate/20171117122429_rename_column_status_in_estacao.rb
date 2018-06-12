class RenameColumnStatusInEstacao < ActiveRecord::Migration[5.0]
  def change
        rename_column :estacoes, :status, :statusEstacao
  end
end
