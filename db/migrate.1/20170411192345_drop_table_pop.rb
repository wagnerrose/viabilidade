class DropTablePop < ActiveRecord::Migration[5.0]
  def change
    drop_table :pop
  end
end
