class Estacao < ApplicationRecord
    has_many :equipamentos

#  validates_presence_of :estacao_id, message: "O campo Estação deve ser preenchido."
#  validates_presence_of :nome, message: "O campo Nome deve ser preenchido."
#  validates_presence_of :cidade, message: "O campo Cidade deve ser preenchido."
#  validates_presence_of :status, message: "O campo Status deve ser preenchido."
#  validates_presence_of :latitude, message: "O campo Latitude deve ser preenchido."
#  validates_presence_of :longitude, message: "O campo Longitude deve ser preenchido."
  # validates_presence_of :uf, "message: deve ser preenchido."  
  
  # validates_uniqueness_of  :estacao_id, message: "Estação já cadastrada."
  
end
