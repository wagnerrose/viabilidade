class Telefone < ApplicationRecord
  belongs_to :contato

  validates :telefone, presence: true

end
