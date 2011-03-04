class ContactFormsController < InheritedResources::Base
  actions :new, :create

  def new
    @contact_form = ContactForm.new
    render(:layout => false) if request.xhr?
  end
  
  def create
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.deliver
      flash[:notice] = "Message sent."
      redirect_to root_url
    else
      flash[:error] = "Something went wrong."
      render :action => :new
    end
  end
end
