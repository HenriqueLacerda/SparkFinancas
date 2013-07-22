class CreateCashflows < ActiveRecord::Migration
  def change
    create_table :cashflows do |t|
      t.integer :company_id
      t.integer :category_id
      t.integer :account_id
      t.date :datalancamento
      t.string :receitadespesa
      t.decimal :valor
      t.date :datavencimento
      t.date :databaixa
      t.string :observacao
      t.timestamps
    end
  end
end
