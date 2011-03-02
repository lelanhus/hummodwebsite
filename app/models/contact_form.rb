class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
  attribute :subject,   :validate => true
  
  attribute :message
  
  def headers
    {
      :subject => "HumMod Contact Form: #{subject}",
      :to => "contact@hummod.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
