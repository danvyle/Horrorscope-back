require_relative '../config/environment'
require_relative '../lib/api_communicator.rb'


# Thread.new do
#   loop do
#     sleep 1
#   end
# end

GetHoroscopes.fetch_capricorn_horoscope
GetHoroscopes.fetch_aquarius_horoscope
GetHoroscopes.fetch_pisces_horoscope
GetHoroscopes.fetch_aries_horoscope
GetHoroscopes.fetch_taurus_horoscope
GetHoroscopes.fetch_gemini_horoscope
GetHoroscopes.fetch_cancer_horoscope
GetHoroscopes.fetch_leo_horoscope
GetHoroscopes.fetch_virgo_horoscope
GetHoroscopes.fetch_libra_horoscope
GetHoroscopes.fetch_scorpio_horoscope
GetHoroscopes.fetch_sagittarius_horoscope
