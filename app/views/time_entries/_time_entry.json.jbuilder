json.extract! time_entry, :id, :name, :project_id, :from, :to, :date, :created_at, :updated_at
json.url time_entry_url(time_entry, format: :json)
