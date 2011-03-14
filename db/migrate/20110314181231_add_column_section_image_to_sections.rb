class AddColumnSectionImageToSections < ActiveRecord::Migration
  def self.up
    add_column :sections, :section_image, :string
  end

  def self.down
    remove_column :sections, :section_image
  end
end
