json.array!(@ahtletes) do |ahtlete|
  json.extract! ahtlete, :id
  json.url ahtlete_url(ahtlete, format: :json)
end
