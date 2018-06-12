class Endereco < ApplicationRecord
  belongs_to :empresa

  validates :logradouro, length: {maximum: 250}, presence: true
  validates :cidade, length: {maximum: 50}, presence: true
  validates :uf, presence: true, length: {maximum: 2}
  validates :cep, length: {maximum: 9}

end
