# require 'resque_scheduler'
Resque.logger.formatter = Resque::VerboseFormatter.new

require 'resque-scheduler'
require 'resque/scheduler/server'