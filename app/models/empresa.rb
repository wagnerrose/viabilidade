class Empresa < ApplicationRecord
    has_many :vt
    
    validates :razao, length: {maximum: 100}, presence: true
    validates :nome_fantasia, length: {maximum: 100}, presence: true
    validates :email, :nome_fantasia, presence: true
    validates :cnpj, length: { maximum: 14}, presence: true, uniqueness: true
    validates :sap, length: {maximum: 7}, presence: true, uniqueness: true
end

