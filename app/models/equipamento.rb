class Equipamento < ApplicationRecord
  belongs_to :estacao
  enum status: [:ND, :IMPLANTAÇÃO, :OPERAÇÃO, :TI]
  # LEGENDA STATUS
  # ND -> NAO DISPONIVEL IMP -> IMPLANTACAO
  # OPE -> OPERACAO       TI -> TECNOLOGIA DA INFORMACAO
  enum tipo: [:N_INFORMADO, :RNP, :EST_ATEND_REMOTO, :PC, :ESTAÇÃO_SATELITE, :PTO_PRESENÇA, :PTO_METRO, :REP_RADIO, :TC]
  # LEGENDA TIPOEQTO
  # NI -> NAO INFORMADO, RNP -> CLIENTE RNP, EAR -> ESTACAO DE ATENDIMENTO REMOTO
  # PC -> ESTACAO POP DO CLIENTE, ES -> ESTACAO SATELITE, PP -> PONTO DE PRESENÇA
  # PM -> PONTO METROPOLITANO, RRD -> REPETIDORA DE RADIO, TC -> TERMINAL DO CLIENTE

  validates :designacao, :presence => {:message => 'A Designação deve ser cadastrada.'}
  validates :designacao, :uniqueness => {:message => 'Equipamento já esta cadastrado.'}
  validates :designacao, :descricao, :tipo, :status, :estacao_id, :presence => {:message => 'Deve ser preenchido.'}

end
