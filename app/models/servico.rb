class Servico < ApplicationRecord

    validates :nome, :codigo, presence: true

end
