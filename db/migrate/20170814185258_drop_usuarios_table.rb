class DropUsuariosTable < ActiveRecord::Migration[5.0]
	def up 
		drop_table :usuarios
	end

	def down
		raise ActiveRecord::IrreversibleMigration
	end
end
