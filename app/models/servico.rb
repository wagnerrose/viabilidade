class Servico < ApplicationRecord
  
    validates :nome, :servico, presence: true
    
end
