class Circuitodado < ApplicationRecord
  enum pta: [:PTAA, :PTAB]
  enum pontoEntrega: [:SD, :CLIENTE, :TELEBRAS, :PARCEIRO]
 # tipoAcesso = SD -> Sem Dados
  enum tipoAcesso: [:SD, :FIBRAOPTICA, :FOPTICACLIENTE, :EILDFOPTICA,
                    :EILDTRUNKFOPTICA, :FPARCEIRO, :RADIO, :RADIOCLIENTE,
                    :SATELITE, :EILDSATELITE, :CBINTCLIENTE, :CBINTTELEBRAS,
                    :TRANSPORTE]
  enum roteamento: [:ND, :BGP, :ROTA_ESTATICA]
  enum dgo: [:SD, :CLIENTE, :TELEBRAS]
  enum abordagem: [:SD, :DGO, :CAIXAR2]

  belongs_to :circuito





end
