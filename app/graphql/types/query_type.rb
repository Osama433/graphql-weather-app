module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :weather, Types::WeatherType, null: false do
      argument :city, String, required: true
    end

    def weather(city:)
      OpenWeather::WeatherDataRetriever.get_weather_data(city)
    end
  end
end
