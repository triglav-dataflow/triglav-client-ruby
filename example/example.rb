require 'triglav_client'

TriglavClient.configure do |config|
  uri = URI.parse('http://localhost:3000')
  config.scheme = uri.scheme
  config.host = "#{uri.host}:#{uri.port}"
end
auth_api = TriglavClient::AuthApi.new
resources_api = TriglavClient::ResourcesApi.new

begin
  credential = TriglavClient::Credential.new(name: 'triglav_test', password: 'triglav_test', authenticator: 'local')
  result = auth_api.create_token(credential)
  if result
    access_token = result.access_token
   #  TriglavClient.configure do |config|
   #    config.api_key['Authorization'] = access_token
   #  end
  end
  puts "me: #{auth_api.me}"
rescue TriglavClient::ApiError => e
  require 'pry'
  binding.pry
  puts "Exception when calling AuthApi->create_token: #{e}"
end

begin
  cluster_name = 'vertica'
  consumable = true
  notifiable = true
  result = resources_api.list_resources(cluster_name, consumable, notifiable)
  puts "list_resources(vertica): #{result}"
rescue TriglavClient::ApiError => e
  puts "Exception when calling AuthApi->create_token: #{e}"
end
