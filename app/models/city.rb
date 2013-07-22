class City < ActiveRecord::Base
  validates :cidade, :presence => {:message => 'Preencha o Nome da Cidade.'}, :allow_blank => false
  validates :estado, :presence => {:message => 'Preencha o Estado da Cidade.'}, :allow_blank => false
  
  
  attr_accessible :cidade, :codigocidade, :codigoestado, :codigopais, :estado, :latitude, :longitude, :pais
end
