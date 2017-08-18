class RemoveColumnEstadoIdFromLocalidades < ActiveRecord::Migration[5.0]
  def change
      remove_reference :localidades, :estado, index: true
      remove_foreign_key :localidades, :uf
  end
end
