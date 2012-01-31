class AddInformationToTrucks < ActiveRecord::Migration
  def self.up
    add_column :trucks, :menu, :text
    add_column :trucks, :twitter, :string
    add_column :trucks, :facebook, :string
    add_column :trucks, :website, :string
  end

  def self.down
    remove_column :trucks, :website
    remove_column :trucks, :facebook
    remove_column :trucks, :twitter
    remove_column :trucks, :menu
  end
end
