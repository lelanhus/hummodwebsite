class Document < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  
  has_many :sections, :dependent => :destroy
  
  validates :title, :body, :user, :presence => true
  validates :title, :uniqueness => true

end
