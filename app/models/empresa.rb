class Empresa < ApplicationRecord
    has_many :vt
    has_many :produtos
    has_one :endereco
    has_many :contatos
    has_many :circuitos


    accepts_nested_attributes_for :endereco, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :contatos, reject_if: :all_blank, allow_destroy: true

    validates :razao, length: {maximum: 150}, presence: true
    validates :nome_fantasia, length: {maximum: 150}, presence: true
    validates :regional, presence: true
    validates :cnpj, length: { maximum: 14}
    validates :sap, length: {maximum: 7}
end

