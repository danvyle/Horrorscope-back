require_relative '../lib/api_communicator.rb'

class HoroscopesController < ApplicationController

  def index
    horoscopes = Horoscope.all
    render json: horoscopes
  end

  def show
      horoscope = Horoscope.find(params[:id])
      render json: horoscope
  end

end
