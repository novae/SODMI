ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "SODMI",
  :user_name            => "sodmiwebmaster@gmail.com",
  :password             => "proyectosodmi123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}