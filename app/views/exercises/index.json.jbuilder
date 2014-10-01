json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :summary, :repetitions, :entity
  json.url exercise_url(exercise, format: :json)
end
