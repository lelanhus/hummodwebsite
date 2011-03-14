class SectionsController < InheritedResources::Base
  belongs_to :document
  
  actions :all, :except => [ :index, :show ]
  
  def create
    create! { @document }
  end
end
