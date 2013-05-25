class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :account, index: true, null: false
      t.integer :amount, null: false
      t.string :descr, null: false

      t.timestamps
    end
  end
end
