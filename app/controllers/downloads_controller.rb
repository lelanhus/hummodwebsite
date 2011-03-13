class DownloadsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index, :show]
  
  def package
    @download = Download.find(params[:id])
    send_file(@download.package.current_path)
  end
  
  def show
    @download = Download.find(params[:id])
    if request.xhr?
      render(:action => :facebox, :layout => false)
    end
  end

end
