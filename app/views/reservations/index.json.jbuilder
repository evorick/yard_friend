json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :user_id, :listing_id, :check_in, :check_out
  json.url reservation_url(reservation, format: :json)
end
