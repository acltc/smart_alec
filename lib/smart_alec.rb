require 'open_weather'
require 'stock_quote'

require "smart_alec/version"
require "smart_alec/current_time"

module SmartAlec
  class Robot
    def do_task(command, option=nil)
      if command == "time"
        puts SmartAlec::CurrentTime.new.get
      elsif command == "weather"
        weather_info = OpenWeather::Current.city(option)
        temp = ((weather_info["main"]["temp"].to_f - 273.15) * 1.8 + 32).round(2)
        puts "The current temperature in #{option} is #{temp} degrees."
      elsif command == "stock"
        bid = StockQuote::Stock.quote(option).bid_realtime
        puts "The realtime bid for #{option.upcase} is $#{bid}."
      else
        puts "Alec doesn't understand that command."
      end
    end
  end
end
