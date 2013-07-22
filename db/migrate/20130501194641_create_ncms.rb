class CreateNcms < ActiveRecord::Migration
  def change
    create_table :ncms do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
