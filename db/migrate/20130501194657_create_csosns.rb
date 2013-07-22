class CreateCsosns < ActiveRecord::Migration
  def change
    create_table :csosns do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
