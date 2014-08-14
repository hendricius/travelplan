json.array!(@trips) do |trip|
  json.extract! trip, :id, :title, :description, :meetup_at, :meetup_location
  json.url trip_url(trip, format: :json)
end
