json.array!(@concerns) do |concern|
  json.extract! concern, :id
  json.url concern_url(concern, format: :json)
end
