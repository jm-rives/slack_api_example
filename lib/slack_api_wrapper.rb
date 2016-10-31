require 'httparty'

class Slack_Api_Wrapper
  # will need the token
  TOKEN = ENV['SLACK_TOKEN']
  BASE_URL = "https://slack.com/api"

  # use postman documentation or to find adressess
  def self.list_channels
    # makes API call
    url = BASE_URL + "channels.list?token=#{TOKEN}"
  end

  # stores API response
  response = HTTParty.get(url)

  # will NOT work from rails console unless directed to seek the script in the lib folder

end
