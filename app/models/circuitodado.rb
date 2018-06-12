class Circuitodado < ApplicationRecord


  belongs_to :circuito

  enum pta: [:PTAA, :PTAB]

  def conv_pta
    if self.pta == 'PTAA'
      'A'
    else
      'B'
    end
  end

end
