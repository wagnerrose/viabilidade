class ChangeCodMunicipioToLocalidades < ActiveRecord::Migration[5.0]
  def change
    rename_column :localidades, :codMunicipio, :siglaMunicipio
  end
end
