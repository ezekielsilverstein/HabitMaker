# require 'twilio-ruby'

class SMSHandler
    def client
        Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTH_TOKEN']
    end

    def test_sms
        client.messages.create(
            from: "+16178706857",
            to: "+13109632942",
            body: "Test Message")
    end

end
