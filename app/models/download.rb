class Download < ActiveRecord::Base
  mount_uploader :package, PackageUploader
end
