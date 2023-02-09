class EndUserEventsConsumer < ApplicationConsumer
  def consume
    messages.each do |message|
      message = message.payload
      account_id = message['account_id']
      event_name = message['event_name']
      eu_id = message['id']
    end
  end

  # Run anything upon partition being revoked
  # def revoked
  # end

  # Define here any teardown things you want when Karafka server stops
  # def shutdown
  # end
end
