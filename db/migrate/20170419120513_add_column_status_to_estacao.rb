class AddColumnStatusToEstacao < ActiveRecord::Migration[5.0]
  def change
    add_column :estacoes, :status, :string
  end
end
