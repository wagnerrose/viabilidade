class Circuitodado < ApplicationRecord
  enum pta: [:PTAA, :PTAB]

  belongs_to :circuito

end
