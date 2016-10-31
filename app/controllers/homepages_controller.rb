# these were breaking things
# require "#{Rails.root}/lib/SlackApiWrapper.rb"
# require "#{Rails.root}/lib/channel.rb"



class HomepagesController < ApplicationController
  def index
    # an array of channels
    @data = Slack_Api_Wrapper.list_channels
  end

  def create

  end

  def new

  end
end
