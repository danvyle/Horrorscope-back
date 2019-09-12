require_relative '../lib/api_communicator.rb'

ENV[‘RAILS_ENV’] = “development”
set :output, ‘log/whenever.log’
every 1.day, :at => ‘9:20 am’ do
  rake "horoscopes:fetch”
end

namespace :horoscopes do
  desc "Rake task to get horoscopes"
  task fetch: :environment do
    puts “Updating horoscopes”
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
    puts “Success!”
  end


end
