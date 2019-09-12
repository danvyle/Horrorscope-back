# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#

#
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
#
# Learn more: http://github.com/javan/whenever


ENV[‘RAILS_ENV’] = “development”
set :output, ‘log/whenever.log’
every 1.day, :at => ‘9:50 am’ do
  rake "horoscopes:fetch”
end

desc "This task is called by the Heroku scheduler add-on"
task :update_horoscopes => :environment do
  puts "Updating feed..."
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
  puts "done."
end

require_relative '../lib/api_communicator.rb'
