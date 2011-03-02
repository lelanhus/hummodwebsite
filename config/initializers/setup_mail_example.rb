ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "domain.com",  
  :user_name            => "contact",  
  :password             => "password",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}