require 'httparty'
require 'channel'

class Slack_Api_Wrapper
  # will need the token
  TOKEN = ENV['SLACK_TOKEN']
  BASE_URL = "https://slack.com/api/"

  # use postman documentation or to find adressess
  def self.list_channels
    # makes API call
    url = BASE_URL + "channels.list?token=#{TOKEN}"
  

  # stores API response
  response = HTTParty.get(url)

  # ap response - for print debugging'

  #will NOT work from rails console unless directed to seek the script in the lib folder

  my_channels = []

  response["channels"].each do |channel|
    id = channel["id"]
    name = channel["name"]
    my_channels << Slack_Channel.new(name, id)
    end

    my_channels
  end

  # remember to seprate parameters with an ampersand
  # can copy/ paster fro Postman
  def self.send_message(channel, msg)
    url = BASE_URL + "chat.postMessage?token=#{TOKEN}" + "&text=#{msg}" + "&channel=#{channel}"

    response = HTTParty.get(url)

  end

end













