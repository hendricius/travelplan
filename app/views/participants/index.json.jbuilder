json.array!(@participants) do |participant|
  json.extract! participant, :id, :name, :trip_id
  json.url participant_url(participant, format: :json)
end
