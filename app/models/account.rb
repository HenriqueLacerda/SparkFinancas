class Account < ActiveRecord::Base
  validates :nome, :presence => {:message => 'Preencha o Nome da Conta.'}, :allow_blank => false 
  attr_accessible :nome
end
