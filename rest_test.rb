require 'rest-client'

response = RestClient.post(
  "http://localhost:3000/api/v1/drivers/1",
  '{"driver":{"firstname": "Jean"}}',
  :content_type => :json, :accept => :json)
