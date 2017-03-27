class RenameCodigoRegionalToCodRegionalInRegionais < ActiveRecord::Migration[5.0]
  def change
    rename_column :regionais, :codigo_regional, :cod_regional
  end
end
