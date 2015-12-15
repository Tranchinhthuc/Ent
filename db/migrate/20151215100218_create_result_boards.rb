class CreateResultBoards < ActiveRecord::Migration
  def change
    create_table :result_boards do |t|
      t.datetime :happen_date

      t.timestamps null: false
    end
  end
end
