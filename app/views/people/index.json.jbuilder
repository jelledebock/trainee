json.array!(@people) do |person|
  json.extract! person, :id, :fName, :lName, :email, :gender, :birthdate, :street, :postalcode, :city, :country
  json.url person_url(person, format: :json)
end
