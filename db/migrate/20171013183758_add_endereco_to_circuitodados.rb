class AddEnderecoToCircuitodados < ActiveRecord::Migration[5.0]
  def change
    add_column :circuitodados, :numeroFibra, :string
    add_column :circuitodados, :cedenteFibra, :string
    add_column :circuitodados, :trechoFibra, :string
    add_column :circuitodados, :anel, :string
    add_column :circuitodados, :latitude, :decimal, precision: 15, scale: 13
    add_column :circuitodados, :longitude, :decimal, precision: 15, scale: 13
  end
end
