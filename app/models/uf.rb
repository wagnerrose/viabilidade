class Uf < ApplicationRecord
  has_many :localidades

  validates :nome, presence: { message: 'O nome da UF deve ser preenchida.' },
        length: { maximum: 30, message: 'O nome da UF deve ser de até 30 caracteres.' }
  validates :sigla, presence: { message: 'A sigla da UF deve ser preenchida.' },
        length: { maximum: 2, message: 'A Sigla da UF deve ser de até 2 carcteres.' }

end
