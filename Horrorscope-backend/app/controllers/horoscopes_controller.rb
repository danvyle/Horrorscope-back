class HoroscopesController < ApplicationController

  def index
    horoscopes = Horoscope.all
    render json: horoscopes
  end

  def show
    horoscope = Horoscope.find(params[:id])
    render json: horoscope
  end

  def fetch_horoscopes
    url = "http://ohmanda.com/api/horoscope/capricorn/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 1)

    url = "http://ohmanda.com/api/horoscope/aquarius/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 2)

    url = "http://ohmanda.com/api/horoscope/pisces/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 3)

    url = "http://ohmanda.com/api/horoscope/aries/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 4)

    url = "http://ohmanda.com/api/horoscope/taurus/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 5)

    url = "http://ohmanda.com/api/horoscope/gemini/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 6)

    url = "http://ohmanda.com/api/horoscope/cancer/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 7)

    url = "http://ohmanda.com/api/horoscope/leo/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 8)

    url = "http://ohmanda.com/api/horoscope/virgo/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 9)

    url = "http://ohmanda.com/api/horoscope/libra/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 10)

    url = "http://ohmanda.com/api/horoscope/scorpio/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 11)

    url = "http://ohmanda.com/api/horoscope/sagittarius/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 12)
  end
end
