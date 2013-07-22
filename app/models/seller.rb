class Seller < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :endereco, :estado, :nome, :numero, :observacao
end
