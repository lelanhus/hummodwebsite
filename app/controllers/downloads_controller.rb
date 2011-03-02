class DownloadsController < InheritedResources::Base
  
  def package
    @download = Download.find(params[:id])
    send_file(@download.package.current_path)
  end
end
