class Telefone < ApplicationRecord
  belogs_to :contato

  validates :telefone, length: {maximum: 12}, presence: true

end
