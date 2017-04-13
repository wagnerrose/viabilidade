class RemoveRegionalIdToAnalis < ActiveRecord::Migration[5.0]
  def change
    remove_column :analistas, :regional_id
  end
end
