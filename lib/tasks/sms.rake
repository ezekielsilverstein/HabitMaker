namespace :sms do
    desc "TODO"
    task :send_sms, [:num] => :environment do |t, args|
        SMSHandler.new(args[:num]).send_message("Hi")
    end
end
