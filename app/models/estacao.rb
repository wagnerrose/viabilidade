class Estacao < ApplicationRecord
  has_many :equipamentos

  enum status: [:NADA, :AGUARDA_ACORDO, :AGURDA_LOCAÇÃO, :CANCELADO, :DESATIVADO, :IMPLANTAÇÃO, :OPERAÇÃO, :PLANEJADO, :PROSPECÇÃO, :SEM_INFO]
  # LEGENDA
  # :AA -> AGUARDANDO ACORDO, :AL -> AGUARDANDO LOCACAO
  # :CAN -> CANCELADO, :DES -> DESATIVADO
  # :IMP -> IMPLANTACAO, :OPE -> OPERACAO
  # :PLAN -> PLANEJAMENTO, :PROS -> PROSPECCAO
  # :SI -> SEM INFORMACAO

  validates :latitude, :longitude, :presence => {:message => 'As coordenadas devem ser preenchidas.'}
  validates :pop, :length => { maximum: 11 }, :presence => {:message => 'A Estação deve ser preenchido.'}
  validates :pop, :uniqueness => {:message => 'A Estação já esta cadastrada.'}
  validates :nome, :presence => {:message => 'O Nome deve ser preenchido.'}
  validates :status, :presence => {:message => 'A Status da Estação deve ser preenchido.'}
  validates :cidade, :uf, :presence => {:message => 'A UF e a cidade devem ser preenchidas.'}

end
