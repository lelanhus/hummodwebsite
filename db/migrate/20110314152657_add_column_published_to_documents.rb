class AddColumnPublishedToDocuments < ActiveRecord::Migration
  def self.up
    add_column :documents, :published, :boolean, :default => false
  end

  def self.down
    remove_column :documents, :published
  end
end
