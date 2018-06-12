class Contato < ApplicationRecord
  belongs_to :empresa

  validates :nome, length: {maximum: 250}, presence: true

end
