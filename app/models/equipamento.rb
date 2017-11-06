class Equipamento < ApplicationRecord
  belongs_to :estacao
  enum status: [:ND, :IMP, :OPE, :TI]
  # LEGENDA STATUS
  # ND -> NAO DISPONIVEL IMP -> IMPLANTACAO
  # OPE -> OPERACAO       TI -> TECNOLOGIA DA INFORMACAO
  enum tipo: [:NI, :RNP, :EAR, :PC, :ES, :PP, :PM, :RRD, :TC]
  # LEGENDA TIPOEQTO
  # NI -> NAO INFORMADO, RNP -> CLIENTE RNP, EAR -> ESTACAO DE ATENDIMENTO REMOTO
  # PC -> ESTACAO POP DO CLIENTE, ES -> ESTACAO SATELITE, PP -> PONTO DE PRESENÇA
  # PM -> PONTO METROPOLITANO, RRD -> REPETIDORA DE RADIO, TC -> TERMINAL DO CLIENTE

  validates :designacao, :presence => {:message => 'A Designação deve ser cadastrada.'}
  validates :designacao, :uniqueness => {:message => 'Equipamento já esta cadastrado.'}
  validates :designacao, :descricao, :tipo, :status, :estacao_id, :presence => {:message => 'Deve ser preenchido.'}

end
