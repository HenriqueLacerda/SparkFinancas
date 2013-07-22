class Cashflow < ActiveRecord::Base
  validates :account_id, :presence => {:message => 'Selecione uma Conta.'}, :allow_blank => false
  validates :category_id, :presence => {:message => 'Selecione uma Categoria.'}, :allow_blank => false
  validates :datalancamento, :presence => {:message => 'Selecione a Data de Lancamento.'}, :allow_blank => false
  
  attr_accessible :account_id, :category_id, :company_id, :databaixa, :datalancamento, :datavencimento, :observacao, :receitadespesa, :valor
end
