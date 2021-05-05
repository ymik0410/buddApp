class AddStreakToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :streak, :integer, default: 0
    add_column :users, :longest_streak, :integer, default: 0
  end
end
