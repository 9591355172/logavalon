
# class HardWorker
#   include Sidekiq::Worker

#   def perform(mail)
#     # Do something
#    		@user = User.where(email: mail).first
# 		timing_end = @user.timings_end
#     	# SendMailMailer.sample_email(mail).deliver!
#     	SendMailMailer.sample_email(mail).deliver_later(wait_until: timing_end)
#     	puts "EMAIL"
#     	puts mail
   
#   end
# end