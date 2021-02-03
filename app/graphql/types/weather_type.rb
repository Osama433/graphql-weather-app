module Types
  class WeatherType < Types::BaseObject
    field :condition, String, null: false
    field :icon, ID, null: false
    field :temp, Float, null: false
    field :feelsLike, Float, null: false
    field :pressure, Integer, null: false
    field :humidity, Integer, null: false
    field :minTemp, Float, null: false
    field :maxTemp, Float, null: false
    field :lastUpdated, Float, null: false
  end
end
