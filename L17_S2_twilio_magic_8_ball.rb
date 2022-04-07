require 'rubygems'
require 'twilio-ruby'

account_sid = "your account sid"
auth_token = "your auth token"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
    :from => "+your Twilio number",
    :to =>"+your own number",
    :body => "Hello!"
)

puts message.to