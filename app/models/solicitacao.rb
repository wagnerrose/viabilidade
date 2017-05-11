class Solicitacao < ApplicationRecord
  belongs_to :empresa
  has_many :respostas
  
end
