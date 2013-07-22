class Service < ActiveRecord::Base
  
  validates :nome, :presence => {:message => 'Preencha o Nome do Serviço.'}, :allow_blank => false
  validates :descricao, :presence => {:message => 'Preencha a Descrição do Serviço.'}, :allow_blank => false
  
  attr_accessible :descricao, :nome, :unidade_id, :valor
end
