class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :name
      t.text :url
      t.text :emails
      t.boolean :enable_notification
      t.text :expected_response

      t.timestamps
    end
  end
end
