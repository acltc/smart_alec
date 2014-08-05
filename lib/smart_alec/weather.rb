require 'open_weather'

module SmartAlec
  class Weather
    def initialize(location)
      @weather_info = OpenWeather::Current.city(location)
    end

    def kelvin
      @weather_info["main"]["temp"]
    end

    def fahrenheit
      ((kelvin.to_f - 273.15) * 1.8 + 32).round(2)
    end
  end
end