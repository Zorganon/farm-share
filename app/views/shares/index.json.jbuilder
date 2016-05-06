json.array!(@shares) do |share|
  json.extract! share, :id, :animal, :size, :price
  json.url share_url(share, format: :json)
end
