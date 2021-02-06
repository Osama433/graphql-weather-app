module OpenWeather

  class WeatherDataNotFound < StandardError
    def initialize(message="Weather data not found")
      super(message)
    end
  end

  class WeatherDataRetriever
    def self.get_weather_data(location)
      response = Faraday.get "https://api.openweathermap.org/data/2.5/weather?q=#{location}&units=metric&appid=#{ENV['API_KEY']}"
      response_body = JSON.parse(response.body)

      unless response.status === 200
        raise WeatherDataNotFound.new(response_body['message'])
      end
      {
          city: location.capitalize,
          condition: response_body['weather'][0]['main'],
          icon: response_body['weather'][0]['icon'],
          temp: response_body['main']['temp'],
          feelsLike: response_body['main']['feels_like'],
          minTemp: response_body['main']['temp_min'],
          maxTemp: response_body['main']['temp_max'],
          pressure: response_body['main']['pressure'],
          humidity: response_body['main']['humidity'],
          lastUpdated: response_body['dt']
      }
    end
  end
end
