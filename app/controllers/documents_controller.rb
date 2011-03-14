class DocumentsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index, :show]
  
  protected
  
  def begin_of_association_chain
    needs_user? ? current_user : super
  end
  
  def needs_user?
    return false if action_name == "index"
    return false if action_name == "show"
    return true
  end
end
