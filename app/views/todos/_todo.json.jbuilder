json.extract! todo, :id, :title, :created_at, :updated_at
json.url todo_url(todo, format: :json)