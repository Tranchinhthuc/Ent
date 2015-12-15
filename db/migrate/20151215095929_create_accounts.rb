class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.float :value
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
