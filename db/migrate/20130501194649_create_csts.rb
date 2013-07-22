class CreateCsts < ActiveRecord::Migration
  def change
    create_table :csts do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
