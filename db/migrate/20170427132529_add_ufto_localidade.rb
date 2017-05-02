class AddUftoLocalidade < ActiveRecord::Migration[5.0]
  def change
    add_reference :localidades, :uf, index: true
    add_foreign_key :localidades, :uf 
  end
end
