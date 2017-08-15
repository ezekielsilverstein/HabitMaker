require 'resque/tasks'
require 'resque/scheduler/tasks'

namespace :resque do
  task :setup => :environment do
    require 'resque'
    ENV['QUEUE'] ||= '*'

    Resque.redis = 'localhost:6379' unless Rails.env == 'production'
    Resque.logger.formatter = Resque::VerboseFormatter.new
    Resque.logger.level = Logger::DEBUG
  end
end

Resque.after_fork = Proc.new { ActiveRecord::Base.establish_connection } #this is necessary for production environments, otherwise your background jobs will start to fail when hit from many different connections.

desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:work"
