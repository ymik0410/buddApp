class CreateBuddyships < ActiveRecord::Migration[6.0]
  def change
    create_table :buddyships do |t|
      t.references :user1, index: true, foreign_key: { to_table: :users }
      t.references :user2, index: true, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
