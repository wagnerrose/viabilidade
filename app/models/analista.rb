class Analista < ApplicationRecord
  belongs_to :regional
  
  validates :nome, length: {maximum: 50}, presence: true 
  validates :email, length: {maximum: 50}, presence: true, uniqueness: true
  validates :funcao, presence: true

end
