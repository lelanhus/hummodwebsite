class Document < ActiveRecord::Base
  belongs_to :user
  
  has_many :sections
  
  validates :title, :user, :presence => true
  validates :title, :uniqueness => true
end
