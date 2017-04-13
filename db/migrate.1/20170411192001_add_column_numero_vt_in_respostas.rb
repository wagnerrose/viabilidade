class AddColumnNumeroVtInRespostas < ActiveRecord::Migration[5.0]
  def change
    add_reference :respostas, :solicitacao, foreign_key: true
  end
end
