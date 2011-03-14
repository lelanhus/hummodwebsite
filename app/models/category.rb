class Category < ActiveRecord::Base
  
  has_many :downloads
  has_many :documents
  
  scope :modelers,    where(:name => "Modeler") & joins(:downloads)
  scope :navigators,  where(:name => "Modeler") & joins(:downloads)
end
