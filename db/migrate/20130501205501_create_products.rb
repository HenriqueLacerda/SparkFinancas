class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :referencia
      t.string :nome
      t.decimal :saldoatual
      t.integer :unidade_id
      t.string :unidade
      t.decimal :valorcompraultimo
      t.decimal :valorcompramedio
      t.decimal :valorvenda
      t.integer :ncm_id
      t.string :ncm
      t.decimal :pesoliquido
      t.decimal :pesobruto
      t.decimal :volumem3
      t.string :codigobarras
      t.integer :ativo
      
      t.timestamps
    end
  end
end
