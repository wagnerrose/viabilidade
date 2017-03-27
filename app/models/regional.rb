class Regional < ApplicationRecord
  has_many :analistas
  
    validates :nome, :cod_regional, presence: true
  
end
