class Product < ActiveRecord::Base
  attr_accessible :ncm_id, :nome, :pesobruto, :pesoliquido, :referencia, :saldoatual, :unidade_id, :valorcompra, :valorcompramedio, :valorvenda, :volumem3
end
