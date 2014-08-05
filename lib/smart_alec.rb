require "smart_alec/version"
require "smart_alec/friendly_time"
require "smart_alec/weather"
require "smart_alec/stock"

module SmartAlec
  class Robot
    def do_task(command, option=nil)
      if command == "time"
        puts "The date and time currently is: " + SmartAlec::CurrentTime.new.get
      elsif command == "weather"
        weather = SmartAlec::Weather.new(option)
        puts "The current temperature in #{option.capitalize} is #{weather.fahrenheit} degrees fahrenheit."
      elsif command == "stock"
        stock = SmartAlec::Stock.new(option)
        puts "The realtime bid for #{option.upcase} is $#{stock.current_price}."
      else
        puts "Alec doesn't understand that command."
      end
    end
  end
end
