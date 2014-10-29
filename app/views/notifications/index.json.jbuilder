json.array!(@notifications) do |notification|
  json.extract! notification, :id, :api_id, :recipients
  json.url notification_url(notification, format: :json)
end
