class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :title
      t.text :body
      t.integer :document_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
