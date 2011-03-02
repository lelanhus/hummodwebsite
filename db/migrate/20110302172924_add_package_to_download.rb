class AddPackageToDownload < ActiveRecord::Migration
  def self.up
    add_column :downloads, :package, :string
  end

  def self.down
    remove_column :downloads, :package
  end
end
