class Service < ActiveRecord::Base
  attr_accessible :descricao, :nome, :unidade_id, :valor
end
