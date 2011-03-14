class Document < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  
  has_many :sections, :dependent => :destroy
  
  validates :title, :body, :category, :user, :presence => true
  validates :title, :uniqueness => true
  
  scope :published, where(:published => true)

end
