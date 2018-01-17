# Preview all emails at http://localhost:3000/rails/mailers/send_mail_mailer
class SendMailMailerPreview < ActionMailer::Preview

	def sample_mail_preview
    SendMailMailer.sample_email(User.first)
  end

end
