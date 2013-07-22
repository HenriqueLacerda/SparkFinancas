class Csosn < ActiveRecord::Base
  validates :codigo, :presence => {:message => 'Preencha o Codigo do CSOSN.'}, :allow_blank => false
  validates :nome, :presence => {:message => 'Preencha o Nome do CSOSN.'}, :allow_blank => false
  attr_accessible :codigo, :nome
end
