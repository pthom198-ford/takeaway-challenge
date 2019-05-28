require 'twilio-ruby'

account_sid = "AC734ad82c3667a8ca09e50d50feafe2b4" # Your Account SID from www.twilio.com/console
auth_token = "95f1b4768b937461c94b7d67d5a5b594"   # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
    body: "Hello from Ruby",
    to: "+447800666005",    # Replace with your phone number
    from: "+447723460273")  # Replace with your Twilio number

puts message.sid
