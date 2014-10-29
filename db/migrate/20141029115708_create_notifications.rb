class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :api_id
      t.text :recipients

      t.timestamps
    end
  end
end
