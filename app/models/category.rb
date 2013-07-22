class Category < ActiveRecord::Base
  validates :nome, :presence => {:message => 'Preencha o Nome da Categoria.'}, :allow_blank => false
  attr_accessible :nome
end
