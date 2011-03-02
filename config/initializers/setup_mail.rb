ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "hummod.com",  
  :user_name            => "contact@hummod.com",  
  :password             => "hummod",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}