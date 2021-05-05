class AddLastActivityToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_activity, :date, default: Time.now.to_date - 100
  end
end
