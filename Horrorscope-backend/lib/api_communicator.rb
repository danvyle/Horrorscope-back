require 'rest-client'
require 'json'

class GetHoroscopes

  def self.fetch_capricorn_horoscope
    url = "http://ohmanda.com/api/horoscope/capricorn/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 1)
  end

  def self.fetch_aquarius_horoscope
    url = "http://ohmanda.com/api/horoscope/aquarius/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 2)
  end

  def self.fetch_pisces_horoscope
    url = "http://ohmanda.com/api/horoscope/pisces/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 3)
  end

  def self.fetch_aries_horoscope
    url = "http://ohmanda.com/api/horoscope/aries/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 4)
  end

  def self.fetch_taurus_horoscope
    url = "http://ohmanda.com/api/horoscope/taurus/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 5)
  end

  def self.fetch_gemini_horoscope
    url = "http://ohmanda.com/api/horoscope/gemini/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 6)
  end

  def self.fetch_cancer_horoscope
    url = "http://ohmanda.com/api/horoscope/cancer/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 7)
  end

  def self.fetch_leo_horoscope
    url = "http://ohmanda.com/api/horoscope/leo/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 8)
  end

  def self.fetch_virgo_horoscope
    url = "http://ohmanda.com/api/horoscope/virgo/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 9)
  end

  def self.fetch_libra_horoscope
    url = "http://ohmanda.com/api/horoscope/libra/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 10)
  end

  def self.fetch_scorpio_horoscope
    url = "http://ohmanda.com/api/horoscope/scorpio/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 11)
  end

  def self.fetch_sagittarius_horoscope
    url = "http://ohmanda.com/api/horoscope/sagittarius/"
    resp = RestClient.get(url)
    horoscope_info = JSON.parse(resp)
    Horoscope.find_or_create_by(date: horoscope_info["date"], daily_horoscope: horoscope_info["horoscope"], sign_id: 12)
  end




end
