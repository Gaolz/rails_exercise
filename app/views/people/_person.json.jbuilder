json.extract! person, :id, :name, :bio, :birthday, :age, :created_at, :updated_at
json.url person_url(person, format: :json)