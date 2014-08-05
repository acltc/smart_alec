require 'stock_quote'

require "smart_alec/version"
require "smart_alec/friendly_time"
require "smart_alec/weather"

module SmartAlec
  class Robot
    def do_task(command, option=nil)
      if command == "time"
        puts "The date and time currently is: " + SmartAlec::CurrentTime.new.get
      elsif command == "weather"
        weather = SmartAlec::Weather.new(option)
        puts "The current temperature in #{option} is #{weather.fahrenheit} degrees fahrenheit."
      elsif command == "stock"
        bid = StockQuote::Stock.quote(option).bid_realtime
        puts "The realtime bid for #{option.upcase} is $#{bid}."
      else
        puts "Alec doesn't understand that command."
      end
    end
  end
end
