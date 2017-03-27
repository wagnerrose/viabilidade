class AddRegionalRefToAnalistas < ActiveRecord::Migration[5.0]
  def change
    add_reference :analistas, :regional, foreign_key: true
  end
end
