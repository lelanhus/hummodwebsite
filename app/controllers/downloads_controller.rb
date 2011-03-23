class DownloadsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index, :show, :package]
  
  def package
    @download = Download.find(params[:id])
    if params[:modeler]
      send_file("/public/downloads/HumMod.v.1.5 2.zip")
    else
      send_file("/public/downloads/Model_Navigator.EXE.zip")
    end
  end
  
  def show
    @download = Download.find(params[:id])
    if request.xhr?
      render(:action => :facebox, :layout => false)
    end
  end

end
