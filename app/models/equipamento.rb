class Equipamento < ApplicationRecord
  belongs_to :estacao

  validates :designacao, :length => { maximum: 13 }, :presence => {:message => 'Deve ter comprimento máximo de 13 caracteres.'} 
  validates :designacao, :uniqueness => {:message => 'Já esta cadastrado.'} 
  validates :designacao, :descricao, :tipo, :status, :estacao_id, :presence => {:message => 'Deve ser preenchido.'}

end
