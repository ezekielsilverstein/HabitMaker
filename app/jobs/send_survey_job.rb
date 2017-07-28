class SendSurveyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    `echo #{Time.now} >> abc.txt`


  end
end
