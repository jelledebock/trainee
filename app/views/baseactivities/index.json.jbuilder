json.array!(@baseactivities) do |baseactivity|
  json.extract! baseactivity, :id
  json.url baseactivity_url(baseactivity, format: :json)
end
