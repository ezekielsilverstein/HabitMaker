# require 'twilio-ruby'

class SMSHandler
    FROM_NUMBER = "+16178706857".freeze
    
    def initialize(to)
        @to_number = to.to_s
    end

    def send_message(msg)
        client.messages.create(
            from: FROM_NUMBER,
            to: @to_number,
            body: msg)
    end

    def client
        @client ||= Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTH_TOKEN']
    end

    def test_sms
        client.messages.create(
            from: FROM_NUMBER,
            to: "+13109632942",
            body: "Test Message")
    end

end
