require 'triglav_client'

config = TriglavClient::Configuration.new do |config|
  uri = URI.parse('http://localhost:3000')
  config.scheme = uri.scheme
  config.host = "#{uri.host}:#{uri.port}"
end
api_client = TriglavClient::ApiClient.new(config)

begin
  auth_api = TriglavClient::AuthApi.new(api_client)
  credential = TriglavClient::Credential.new(name: 'triglav_test', password: 'triglav_test', authenticator: 'local')
  result = auth_api.create_token(credential)
  if result
    access_token = result.access_token
    api_client.config.api_key['Authorization'] = access_token
  end
  puts "me: #{auth_api.me}"
rescue TriglavClient::ApiError => e
  if e.code == 0
    puts "Could not connect"
  else
    puts "Exception when calling AuthApi->create_token: #{e}"
  end
end

begin
  resources_api = TriglavClient::ResourcesApi.new(api_client)
  cluster_name = 'vertica'
  consumable = true
  notifiable = true
  result = resources_api.list_resources(cluster_name, consumable, notifiable)
  puts "list_resources(vertica): #{result}"
rescue TriglavClient::ApiError => e
  if e.code == 0
    puts "Could not connect"
  else
    puts "Exception when calling AuthApi->create_token: #{e}"
  end
end
