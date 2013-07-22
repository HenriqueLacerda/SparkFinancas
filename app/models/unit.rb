class Unit < ActiveRecord::Base
  validates :abreviado, :presence => {:message => 'Preencha a Abreviação da Unidade.'}, :allow_blank => false
  validates :nome, :presence => {:message => 'Preencha o Nome da Unidade.'}, :allow_blank => false
  
  attr_accessible :abreviado, :nome
end
