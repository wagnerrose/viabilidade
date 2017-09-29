class Contato < ApplicationRecord
  belongs_to :empresa
  has_many :telefones

  validates :nome, length: {maximum: 250}, presence: true

end
