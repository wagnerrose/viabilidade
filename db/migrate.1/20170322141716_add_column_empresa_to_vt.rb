class AddColumnEmpresaToVt < ActiveRecord::Migration[5.0]
  def change
        add_reference :vt, :empresa, foreign_key: true
  end
end
