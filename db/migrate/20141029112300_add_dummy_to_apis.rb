class AddDummyToApis < ActiveRecord::Migration
  def change
    add_column :apis, :dummy, :string
  end
end
