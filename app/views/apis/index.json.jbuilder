json.array!(@apis) do |api|
  json.extract! api, :id, :name, :url, :emails, :enable_notification, :expected_response
  json.url api_url(api, format: :json)
end
