class CreateRegionais < ActiveRecord::Migration[5.0]
  def change
    create_table :regionais do |t|
      t.string :codigo_regional
      t.string :nome

      t.timestamps
    end
  end
end
