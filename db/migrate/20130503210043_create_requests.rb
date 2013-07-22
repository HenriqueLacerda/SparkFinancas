class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :cliente_id
      t.string :clientenome
      t.string :clienteendereco
      t.string :clientenumero
      t.string :clientebairro
      t.string :clientecidade
      t.string :clientecep
      t.string :clienteestado
      t.integer :vendedor_id
      t.string :vendedornome
      t.integer :formapagamento_id
      t.decimal :valorfrete
      t.decimal :valorseguro
      t.decimal :valoroutrasdespesas
      t.integer :tipodesconto
      t.decimal :quantidadedesconto
      t.decimal :valortotaldesconto
      t.decimal :quantidadecomissao
      t.decimal :valortotalcomissao
      t.decimal :valortotalprodutos
      t.decimal :valortotalpedido

      t.timestamps
    end
  end
end
