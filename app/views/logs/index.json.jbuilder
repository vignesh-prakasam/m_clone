json.array!(@logs) do |log|
  json.extract! log, :id, :api_id, :response, :current_status
  json.url log_url(log, format: :json)
end
