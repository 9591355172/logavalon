# task :send_email, [:email_id] => :environment do |t, args|
#   HardWorker.perform_async(args[:email_id])
  
#   # SendMailMailer.sample_email(args).deliver_now!
# end