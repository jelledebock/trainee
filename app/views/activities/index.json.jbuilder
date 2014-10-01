json.array!(@activities) do |activity|
  json.extract! activity, :id, :date, :remarks
  json.url activity_url(activity, format: :json)
end
