class City < ActiveRecord::Base
  attr_accessible :cidade, :codigocidade, :codigoestado, :codigopais, :estado, :latitude, :longitude, :pais
end
