require 'open_weather'
require 'stock_quote'

module SmartAlec
  class Robot
    def do_task(command, option)
      if command == "time"
        puts "The date and time currently is: " + Time.now.strftime("%A, %B %d %Y %l:%M %p")
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