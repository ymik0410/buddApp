class CreateDailyGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_goals do |t|
      t.text :name
      t.boolean :done
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
