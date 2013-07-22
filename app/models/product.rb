class Product < ActiveRecord::Base
  validates :nome, :presence => {:message => 'Preencha o Nome do Produto.'}, :allow_blank => false
  
  attr_accessible :ncm_id, :nome, :pesobruto, :pesoliquido, :referencia, :saldoatual, :unidade_id, :valorcompra, :valorcompramedio, :valorvenda, :volumem3
end
