class Contato < ApplicationRecord
  belongs_to :empresa
  has_many :telefones

  validates :nome, length: {maximum: 50}, presence: true
  validates :sobrenome, length: {maximum: 50}
  validates :email, length: {maximum: 50}

end
