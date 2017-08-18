class DropMemberesTable < ActiveRecord::Migration[5.0]
  def up
	drop_table :memberes 
  end
	def down
		raise ActiveRecord::IrreversibleMigration
	end
end
