json.extract! event, :id, :title, :description, :date, :limit, :group_id, :created_at, :updated_at
json.url event_url(event, format: :json)
