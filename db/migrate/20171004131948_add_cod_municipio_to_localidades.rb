class AddCodMunicipioToLocalidades < ActiveRecord::Migration[5.0]
  def change
    add_column :localidades, :codMunicipio, :string
    rename_column :localidades, :sigla_cnl, :siglaCNL
    rename_column :localidades, :cod_cnl, :codCNL
  end
end
