class Category < ActiveRecord::Base
  
  has_many :downloads
end
