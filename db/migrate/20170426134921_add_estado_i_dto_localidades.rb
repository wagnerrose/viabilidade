class AddEstadoIDtoLocalidades < ActiveRecord::Migration[5.0]
  def up
    remove_column :localidades, :uf
  end

  def down
    add_column :localidades, :estacao, :references
  end
end
