class Estacao < ApplicationRecord
  has_many :equipamentos
  
  validates :pop, :nome, :status, :cidade, :uf, presence: true
  
end
