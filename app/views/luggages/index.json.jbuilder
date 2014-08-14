json.array!(@luggages) do |luggage|
  json.extract! luggage, :id, :name, :trip_id, :participant_id, :quantity, :price, :comment, :importance, :taken_care_of, :taken_care_of_by_id
  json.url luggage_url(luggage, format: :json)
end
