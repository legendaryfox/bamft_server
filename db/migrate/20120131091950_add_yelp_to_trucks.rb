class AddYelpToTrucks < ActiveRecord::Migration
  def self.up
    add_column :trucks, :yelp, :string
  end

  def self.down
    remove_column :trucks, :yelp
  end
end
