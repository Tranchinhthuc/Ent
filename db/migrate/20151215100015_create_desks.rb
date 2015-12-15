class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.datetime :play_date
      t.integer :type_desk
      t.float :value
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
