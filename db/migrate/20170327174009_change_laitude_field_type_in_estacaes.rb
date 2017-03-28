class ChangeLaitudeFieldTypeInEstacaes < ActiveRecord::Migration[5.0]
  def change
    change_column :estacaes, :latitude, :decimal, :precision => 15, :scale => 13
    change_column :estacaes, :longitude, :decimal, :precision => 15, :scale => 13
  end
end
