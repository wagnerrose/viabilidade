class Equipamento < ApplicationRecord
  belongs_to :estacao

  enum statusEquipamento: [:NI, :implantacao, :operacao, :TI]

  se = Hash["NI"=>"Não informado", "implantação" => "Implantação", "operacao" => "Operação",
   "TI" => "TI"]

  # LEGENDA STATUS
  # ND -> NAO DISPONIVEL IMP -> IMPLANTACAO
  # OPE -> OPERACAO       TI -> TECNOLOGIA DA INFORMACAO
  enum tipoEquipamento: [:ND, :RNP, :est_atend_remoto, :PC, :estação_satelite,
                     :pto_presença, :pto_metro, :rep_radio, :terminal_cliente]
  # LEGENDA TIPOEQTO
  # NI -> NAO INFORMADO, RNP -> CLIENTE RNP, EAR -> ESTACAO DE ATENDIMENTO REMOTO
  # PC -> ESTACAO POP DO CLIENTE, ES -> ESTACAO SATELITE, PP -> PONTO DE PRESENÇA
  # PM -> PONTO METROPOLITANO, RRD -> REPETIDORA DE RADIO, TC -> TERMINAL DO CLIENTE

  validates :designacao, :presence => {:message => 'A Designação deve ser cadastrada.'}
  validates :designacao, :uniqueness => {:message => 'Equipamento já esta cadastrado.'}
  validates :designacao, :descricao, :tipo, :statusEquipamento, :estacao_id, :presence => {:message => 'Deve ser preenchido.'}

  def convStatusEquipamento
      se(self.statusEquipamento)
    end
end
