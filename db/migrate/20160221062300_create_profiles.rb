class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.date :birtday
      t.string :color
      t.string :twitter

      t.timestamps null: false
    end
  end
end
