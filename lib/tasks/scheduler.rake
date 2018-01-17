desc "This task is called by the Heroku scheduler add-on"
# require File.expand_path(File.dirname(__FILE__) + "/environment")
namespace :scheduler do

		task :send_email => :environment do 
			emails = User.pluck(:email)
			
   			# timing = @user.timings
   			
			emails.each do |mail|
				puts "Updating feed..."
				@user = User.where(email: mail).first
				timing_end = @user.timings_end
				d = Date.today
				t_utc = timing_end
				t_itc = t_utc.in_time_zone('Asia/Kolkata')
				t_itc -= t_itc.utc_offset
				dt = DateTime.new(d.year, d.month, d.day, t_itc.hour, t_itc.min, t_itc.sec, t_itc.zone)
  				SendMailMailer.sample_email(mail).deliver_later(wait_until: dt)
				puts "done."
			end

		end

end

# task :send_reminders => :environment do
#   User.send_reminders
# end