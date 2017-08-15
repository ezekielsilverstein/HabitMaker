class SchedulerJob
  @queue = :default

  def self.perform(previous_sendtime)
    # Do something later
    puts 'Hello'
    Resque.enqueue_in(1.minutes, SchedulerJob, [])


  end

  def find_surveys_since_previous_sendtime(previous_sendtime)
    surveys_to_queue = Survey.where("send_time > ? and send_time < ?", previous_sendtime, Time.now)
  end

end

