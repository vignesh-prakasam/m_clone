class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :api_id
      t.text :response
      t.string :current_status

      t.timestamps
    end
  end
end
