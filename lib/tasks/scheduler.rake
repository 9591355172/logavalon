desc "This task is called by the Heroku scheduler add-on"
# require File.expand_path(File.dirname(__FILE__) + "/environment")
namespace :scheduler do

		task :send_email => :environment do 
			emails = User.pluck(:email)
			
   			# timing = @user.timings
   			
			emails.each do |mail|
				puts "Updating feed..."
				@user = User.where(email: mail).first
				timing = @user.department.timings
				timing_end = @user.department.timings_end
				d = Date.today
				timing_itc = timing.in_time_zone('Asia/Kolkata')
				timing_end_itc = timing_end.in_time_zone('Asia/Kolkata')
				timing_itc -= timing_itc.utc_offset
				timing_end_itc -= timing_end_itc.utc_offset
				dt = DateTime.new(d.year, d.month, d.day, timing_itc.hour, timing_itc.min, timing_itc.sec, timing_itc.zone)
				dt_end = DateTime.new(d.year, d.month, d.day, timing_end_itc.hour, timing_end_itc.min, timing_end_itc.sec, timing_end_itc.zone)
  				SendMailMailer.sample_email(mail).deliver_later(wait_until: dt)
  				SendMailMailer.sample_email(mail).deliver_later(wait_until: dt_end)
				puts "done."
			end

		end

end

# task :send_reminders => :environment do
#   User.send_reminders
# end