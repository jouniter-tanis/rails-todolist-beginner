json.extract! todo_record, :id, :title, :description, :status, :created_at, :updated_at
json.url todo_record_url(todo_record, format: :json)
