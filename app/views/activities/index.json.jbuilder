json.array!(@activities) do |activity|
  json.extract! activity, :id, :trip_id, :participant_id, :description, :name
  json.url activity_url(activity, format: :json)
end
