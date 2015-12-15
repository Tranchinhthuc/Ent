class CreatePlayedNumbers < ActiveRecord::Migration
  def change
    create_table :played_numbers do |t|
      t.integer :value
      t.float :coin
      t.string :status
      t.integer :user_id
      t.integer :desk_id
      t.integer :invoice_id

      t.timestamps null: false
    end
  end
end
