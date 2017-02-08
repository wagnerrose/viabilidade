class Analista < ApplicationRecord
  validates :nome, presence: { message: 'O Nome do Analista deve ser preenchido.' },
        length: { maximum: 50, message: 'Nome deve ter até 50 caracteres' }
  validates :email, presence: { message: 'O E-Mail do Analista deve ser preenchido.'}, 
        length: { maximum: 50, message: 'E-Mail deve ter até 50 caracteres' }
  validates :fone_contato, presence: {  message: 'O Telefone do Analista deve ser preenchido.' },
        length: { maximum: 30, message: 'O Telefone de contato deve ter até 30 caracteres' }
  validates :funcao, presence: {  message: 'A função do Analista deve ser preenchida.' },
        length: { maximum: 15, message: 'Função deve ter até 15 caracteres' }
  validates_presence_of :id_regional, message: 'A Regional deve ser preenchida.'
end
