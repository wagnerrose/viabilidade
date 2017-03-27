class Analista < ApplicationRecord
  belongs_to :regional
  
  validates :nome, :email, :funcao, presence: true
  validates :email, uniqueness: true
  
end
