class SectionsController < InheritedResources::Base
  before_filter :authenticate_user!
  
  belongs_to :document
  
  actions :all, :except => [ :index, :show ]
  
  def create
    create! { @document }
  end
end
