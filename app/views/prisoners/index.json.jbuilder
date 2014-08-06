json.array!(@prisoners) do |prisoner|
  json.extract! prisoner, :id
  json.url prisoner_url(prisoner, format: :json)
end
