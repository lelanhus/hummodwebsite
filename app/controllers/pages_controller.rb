class PagesController < ApplicationController
  def home
    @modeler    = Category.modelers.first
    @navigator  = Category.navigators.first
  end
  
  def view
    render params[:name]
  end
end
