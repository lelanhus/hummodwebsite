class ContactForm < ActiveRecord::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
  attribute :subject,   :validate => true
  
  attribute :message
  
  def headers
    {
      :subject => "HumMod Contact Form: #{subject}",
      :from => "contact@hummod.com"
      :from => %("#{name}" <#{email}>)
    }
  end
end
