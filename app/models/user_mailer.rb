class UserMailer < ActionMailer::Base
  
  def welcome_email(user)
    recipients    user.email
    from          "Memphant users registration"
    subject       "Welcome to Menphant #{user.display_name}"
    sent_on       Time.now
    body({
      :user => user, 
      :activation_url => activation_url(user.activation_key, :host => 'localhost', :port => '3000')
    })
  end

end
