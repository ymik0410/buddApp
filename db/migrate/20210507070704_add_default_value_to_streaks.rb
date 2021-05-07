class AddDefaultValueToStreaks < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :streak, :integer, :default => 0
    change_column :users, :longest_streak, :integer, :default => 0
  end
end
