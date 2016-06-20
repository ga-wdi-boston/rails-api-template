# Calls MSW API
require 'httparty'
class ForecastsController < OpenReadController
  include HTTParty
  base_uri 'http://magicseaweed.com/api/c1b08a0ce3e6bfa59407d633d5ca0a10/forecast/?spot_id=369&fields=charts.swell'
  skip_before_action :authenticate, only: [:swell]

  # attr_reader :msw_wind

  def swell
    charts = self.class.get('http://magicseaweed.com/api/c1b08a0ce3e6bfa59407d633d5ca0a10/forecast/?spot_id=369&fields=charts.swell')
    # charts.each do |chart|
      render json: charts
      return
    end
  end
