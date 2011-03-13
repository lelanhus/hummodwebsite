class DownloadsController < InheritedResources::Base
  actions :index, :show, :package
  
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
