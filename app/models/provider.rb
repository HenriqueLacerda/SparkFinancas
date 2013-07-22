class Provider < ActiveRecord::Base
  attr_accessible :bairro, :cep, :endereco, :nome, :numero
end
