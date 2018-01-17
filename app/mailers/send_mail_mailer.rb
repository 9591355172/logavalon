class SendMailMailer < ApplicationMailer
	
	default from: "girmalruby@gmail.com"

  def sample_email(email)
    
       mail(to: email, subject: 'Log System')
    
  end
end
