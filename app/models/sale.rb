class Sale < ActiveRecord::Base
  attr_accessible :cliente_id, :clientebairro, :clientecep, :clientecidade, :clienteendereco, :clienteestado, :clientenome, :clientenumero, :formapagamento_id, :quantidadecomissao, :quantidadedesconto, :tipodesconto, :valorfrete, :valoroutrasdespesas, :valorseguro, :valortotalcomissao, :valortotaldesconto, :valortotalpedido, :valortotalprodutos, :vendedor_id, :vendedornome
end
