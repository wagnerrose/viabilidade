class Produto < ApplicationRecord
  belongs_to :empresa

  validates :tipo, length: {maximum: 15}, presence: true
  validates :fornecedor, length: {maximum: 50}, presence: true
  validates :velocidade, length: {maximum: 15}, presence: true
  validates :origem, length: {maximum: 50}, presence: true
  validates :destino, length: {maximum: 50}
  validates :uf_a, length: {maximum: 2}, presence: true
  validates :uf_b, length: {maximum: 2}
end
