class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.integer :cidade_id
      t.string :cep
      t.string :estado
      t.text :observacao

      t.timestamps
    end
  end
end
