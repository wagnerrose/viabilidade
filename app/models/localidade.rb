class Localidade < ApplicationRecord
  belongs_to :uf

   validates :municipio, :siglaCNL, :localidade,  presence: true
   validates :latitude, :codCNL, presence: true
   validates :longitude, :uf_id, presence: true
   validates :siglaMunicipio, presence: true
end
