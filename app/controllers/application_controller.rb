class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def delayed_job_admin_authentication
    authenticate_user!
  end
end
