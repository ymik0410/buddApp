class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :introduction, :string
    add_column :users, :goal_description, :string
    add_column :users, :photo, :string
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :country, :string
    add_column :users, :username, :string
  end
end
