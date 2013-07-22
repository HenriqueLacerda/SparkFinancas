class Cst < ActiveRecord::Base
  validates :codigo, :presence => {:message => 'Preencha o Codigo do CST.'}, :allow_blank => false
  validates :nome, :presence => {:message => 'Preencha o Nome do CST.'}, :allow_blank => false
  attr_accessible :codigo, :nome
end
