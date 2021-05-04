class CreateMiniGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :mini_goals do |t|
      t.text :name
      t.boolean :done
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
