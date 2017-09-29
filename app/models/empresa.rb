class Empresa < ApplicationRecord
    has_many :vt
    has_many :produtos
    has_many :enderecos
    has_many :contatos

    validates :razao, length: {maximum: 150}, presence: true
    validates :nome_fantasia, length: {maximum: 150}, presence: true
    validates :regional, presence: true
    validates :cnpj, length: { maximum: 14}
    validates :sap, length: {maximum: 7}
end

