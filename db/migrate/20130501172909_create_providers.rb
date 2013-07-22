class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nome
      t.string :nomefantasia
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.integer :cidade_id
      t.string :cidade
      t.string :cep
      t.string :estado
      t.string :documento
      t.string :inscricaoestadual
      t.string :regimetributario
      t.text :observacao
      
      t.timestamps
    end
  end
end
