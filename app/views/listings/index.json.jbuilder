json.array!(@listings) do |listing|
  json.extract! listing, :id, :user_id, :name, :address, :description, :availability_from, :availability_to, :sqft, :price
  json.url listing_url(listing, format: :json)
end
