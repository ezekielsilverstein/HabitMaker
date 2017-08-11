class SendSurveyJob
  @queue = :default

  def self.perform(*args)
    # Do something later
    # `echo #{Time.now} >> abc.txt`
    sms_handler = SMSHandler.new("+13109632942")
    # puts 'hello'
    sms_handler.send_message("Another test message")
    # puts 'goodbye'

  end
end
