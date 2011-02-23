class PagesController < ApplicationController
  def home
    @downloads = Download.all
  end
  
  def view
    render params[:name]
  end
end
