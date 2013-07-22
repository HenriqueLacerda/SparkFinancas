class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :nome
      t.string :abreviado

      t.timestamps
    end
  end
end
