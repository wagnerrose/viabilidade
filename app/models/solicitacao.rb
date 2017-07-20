class Solicitacao < ApplicationRecord
  belongs_to :empresa
  has_many :respostas

  accepts_nested_attributes_for :respostas, :reject_if => :all_blank, :allow_destroy => true
end
