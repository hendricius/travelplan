json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :description, :trip_id, :participant_id, :address
  json.url destination_url(destination, format: :json)
end
