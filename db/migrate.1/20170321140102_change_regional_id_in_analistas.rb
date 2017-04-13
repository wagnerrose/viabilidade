class ChangeRegionalIdInAnalistas < ActiveRecord::Migration[5.0]
   def up
        change_column :analistas, :regional_id, :reference
    end

    def down
        change_column :analistas, :regional_id, :string
    end
end
