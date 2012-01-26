class RenameApiData < ActiveRecord::Migration
  def self.up
    rename_column :datapulls, :apidata, :api_data
  end

  def self.down
    rename_column :datapulls, :api_data, :apidata
  end
end
