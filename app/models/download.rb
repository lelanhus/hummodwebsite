class Download < ActiveRecord::Base
  mount_uploader :package, PackageUploader
  
  belongs_to :category
end
