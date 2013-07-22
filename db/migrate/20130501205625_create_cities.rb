class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :cidade
      t.string :estado
      t.string :pais
      t.string :codigocidade
      t.string :codigoestado
      t.string :codigopais
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
