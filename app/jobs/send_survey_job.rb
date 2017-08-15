class SendSurveyJob
  @queue = :default

  def self.perform(id)
    # Do something later
    # `echo #{Time.now} >> abc.txt`
    survey = Survey.find(id)
    to_number = survey.phone_number
    survey_name = survey.name

    sms_handler = SMSHandler.new(to_number)
    sms_handler.send_message(survey_name)

  end
end

