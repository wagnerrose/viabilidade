class CreateVt < ActiveRecord::Migration[5.0]
  def change
    create_table :vt do |t|
      t.string :vt_numero
      t.integer :id_cliente
      t.date :data_solicitacao
      t.string :solicitante
      t.string :analista
      t.string :servico
      t.string :uf_origem
      t.string :origem
      t.string :uf_destino
      t.string :destino
      t.string :popa
      t.string :popb
      t.string :resultado_vt
      t.string :justificativa_vt
      t.date :data_resultado
      t.text :comentario

      t.timestamps
    end
  end
end
