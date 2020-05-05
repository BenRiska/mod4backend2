class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.integer :amount
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :currency, null: false, foreign_key: true
     

      t.timestamps
    end
  end
end
