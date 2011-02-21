class CreateDownloads < ActiveRecord::Migration
  def self.up
    create_table :downloads do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
    
    add_index :downloads, :category_id
  end

  def self.down
    drop_table :downloads
  end
end
