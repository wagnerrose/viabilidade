class AddBandaToVt < ActiveRecord::Migration[5.0]
  def change
        add_column :vt, :banda, :integer
  end
end
