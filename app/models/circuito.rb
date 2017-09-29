class Circuito < ApplicationRecord

  enum servico: [:AC, :BL, :CI, :L2, :L3, :P2, :TX]
  enum status: [:BLOQUEADO, :CANCELADO, :DESATIVADO, :INSTALAÇÃO, :OPERAÇÃO]
  enum roteamento: [:BGP, :ROTA_ESTATICA, :ND]

  belongs_to :empresa

  validates :designacao, length: {maximum: 12}, presence: true
  validates :servico, presence: true
  validates :status, presence: true
  validates :roteamento, presence: true
  validates :bandaContratada, presence: true
  validates :bandaAtivada, presence: true

end
