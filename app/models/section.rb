class Section < ActiveRecord::Base
  
  belongs_to :document
  
  validates :title, :body, :presence => true
  validates :title, :uniqueness => { :scope => :document }
end
