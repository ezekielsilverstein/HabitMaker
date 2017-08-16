class Survey < ApplicationRecord
    has_many :responses
    #send_time is in UTC
end
