class Company < ActiveRecord::Base
  attr_accessible :bairro, :cep, :email, :endereco, :login, :nome, :numero, :senha
end
