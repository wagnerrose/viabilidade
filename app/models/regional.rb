class Regional < ApplicationRecord
  validates :codigo_regional, length: { maximum: 10, message: 'O código da Regional deve ter até 10 caracteres' }
  validates :nome_regional, length: { maximum: 30, message: 'O nome da Regional deve ter até 10 caracteres.'}
end
