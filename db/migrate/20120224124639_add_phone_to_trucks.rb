class AddPhoneToTrucks < ActiveRecord::Migration
  def self.up
    add_column :trucks, :phone, :string
  end

  def self.down
    remove_column :trucks, :phone
  end
end
