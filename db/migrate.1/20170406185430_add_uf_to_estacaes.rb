class AddUfToEstacaes < ActiveRecord::Migration[5.0]
  def change
    add_column :estacaes, :uf, :string
  end
end
