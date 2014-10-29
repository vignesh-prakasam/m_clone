class RenameDummyApis < ActiveRecord::Migration
  def change
     rename_column :apis , :dummy , :dummy_renamed
  end
end
