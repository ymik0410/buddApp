class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :introduction, :string
    add_column :users, :goal_description, :string
    add_column :users, :photo, :string
  end
end
