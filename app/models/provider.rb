class Provider < ActiveRecord::Base
  validates :nome, :presence => {:message => 'Preencha o Nome do Fornecedor.'}, :allow_blank => false
  
  
  attr_accessible :bairro, :cep, :endereco, :nome, :numero
end
