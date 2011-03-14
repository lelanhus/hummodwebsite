class Section < ActiveRecord::Base
  mount_uploader :section_image, SectionImageUploader
  
  belongs_to :document
  
  validates :title, :body, :presence => true
  validates :title, :uniqueness => { :scope => :document_id }
end
