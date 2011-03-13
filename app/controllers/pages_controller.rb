class PagesController < ApplicationController
  def home
    @modeler    = Category.where(:name => "Modeler").first.downloads.first
    @navigator  = Category.where(:name => "Navigator").first.downloads.first
  end
  
  def view
    render params[:name]
  end
end
