class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cep
      t.string :email
      t.string :login
      t.string :senha

      t.timestamps
    end
  end
end
