require 'sinatra'
require 'httparty'

get '/' do
  "Hello World!"
end

get '/getEventData' do
	response = HTTParty.get('http://maps.raleighnc.gov/arcgis/rest/services/SpecialEvents/SpecialEventsView/MapServer/0/query?where=1%3D1&outSR=4326&f=json')
	#puts response.body, response.code, response.message, response.headers.inspect

	# convert to waze schema

	return response.body
end


