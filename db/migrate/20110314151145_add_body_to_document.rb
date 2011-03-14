class AddBodyToDocument < ActiveRecord::Migration
  def self.up
    add_column :documents, :body, :text
  end

  def self.down
    remove_column :documents, :body
  end
end
