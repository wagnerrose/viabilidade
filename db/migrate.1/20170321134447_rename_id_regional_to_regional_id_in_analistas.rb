class RenameIdRegionalToRegionalIdInAnalistas < ActiveRecord::Migration[5.0]
  def change
    rename_column :analistas, :id_regional, :regional_id
  end
end
