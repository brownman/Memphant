ActionMailer::Base.smtp_settings = {
  :address        => "smtp.gmail.com",
  :port           => 587,
  :enable_starttls_auto => true,
  :domain         => "gmail.com",
  :user_name      => "memphant",
  :password       => "m3mph4nt",
  :authentication => :plain
}