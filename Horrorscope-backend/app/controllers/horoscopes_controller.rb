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
