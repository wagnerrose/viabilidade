class Localidade < ApplicationRecord
  belongs_to :uf

   validates :municipio, :sigla_cnl, :localidade,  presence: true
   validates :latitude, :cod_cnl, presence: true
   validates :longitude, :uf_id, presence: true
end
