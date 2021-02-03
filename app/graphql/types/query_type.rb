module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :weather, Types::WeatherType, null: false

    def weather
           {
              condition: "Clear",
              icon: "01d",
              temp: 12.55,
              feelsLike: 11.86,
              minTemp: 10.37,
              maxTemp: 14.26,
              pressure: 1023,
              humidity: 100,
              lastUpdated: 1560350645
          }
    end
  end
end
