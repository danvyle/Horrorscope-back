class SignsController < ApplicationController

  def index
    signs = Sign.all
    render json: signs
  end

  def show
      sign = Sign.find(params[:id])
      horoscopes = sign.horoscopes.map{|horoscope| {id:horoscope.id, date: horoscope.date, daily_horoscope: horoscope.daily_horoscope, sign_id: horoscope.sign_id}}
      retrogrades = sign.retrogrades.map{|retrograde| {id:retrograde.id, sign_id: retrograde.sign_id, name: retrograde.name, explanation: retrograde.explanation}}
      sign_json = {id: sign.id, name: sign.name, sign_id: sign.sign_id, horoscopes: horoscopes, retrogrades: retrogrades}
      render json: sign_json
  end

end

# user = User.find(params[:id])
#     backgrounds = user.backgrounds.map{|background| {id: background.id, name: background.name, background_url: background.background_url, items: user.get_items(background)}}
#     user_json = {id: user.id, username: user.username, backgrounds: backgrounds}
#     render json: user_json
