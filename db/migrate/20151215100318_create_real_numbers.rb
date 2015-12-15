class CreateRealNumbers < ActiveRecord::Migration
  def change
    create_table :real_numbers do |t|
      t.integer :result_board_id
      t.integer :value
      t.integer :type_prize

      t.timestamps null: false
    end
  end
end
