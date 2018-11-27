class Equipamento < ApplicationRecord
  belongs_to :estacao
  has_many :circuitodados

  enum statusEquipamento: [:NI, :IMPLANTAÇÃO, :OPERAÇÃO, :TI]

  # LEGENDA STATUS
  # ND -> NAO DISPONIVEL IMP -> IMPLANTACAO
  # OPE -> OPERACAO       TI -> TECNOLOGIA DA INFORMACAO
  enum tipoEquipamento: [:ND, :RNP, :ESTAÇÃO_ATENDIMENTO_REMOTO, :PONTO_CLIENTE, :ESTAÇÃO_CLIENTE,
                     :PTO_PRESENÇA, :PTO_METRO, :REPETIDOR_RADIO, :TERMINAL_CLIENTE]
  # LEGENDA TIPOEQTO
  # NI -> NAO INFORMADO, RNP -> CLIENTE RNP, EAR -> ESTACAO DE ATENDIMENTO REMOTO
  # PC -> ESTACAO POP DO CLIENTE, ES -> ESTACAO SATELITE, PP -> PONTO DE PRESENÇA
  # PM -> PONTO METROPOLITANO, RRD -> REPETIDORA DE RADIO, TC -> TERMINAL DO CLIENTE

  validates :designacao, :presence => {:message => 'A Designação deve ser cadastrada.'}
  validates :designacao, :uniqueness => {:message => 'Equipamento já esta cadastrado.'}
  validates :designacao, :descricao, :tipoEquipamento, :statusEquipamento, :estacao_id, :presence => {:message => 'Deve ser preenchido.'}

end
