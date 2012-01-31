class AddEmailToTrucks < ActiveRecord::Migration
  def self.up
    add_column :trucks, :email, :string
  end

  def self.down
    remove_column :trucks, :email
  end
end
