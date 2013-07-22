class Ncm < ActiveRecord::Base
  validates :codigo, :presence => {:message => 'Preencha o Codigo do NCM.'}, :allow_blank => false
  validates :nome, :presence => {:message => 'Preencha o Nome do NCM.'}, :allow_blank => false
  attr_accessible :codigo, :nome
end
