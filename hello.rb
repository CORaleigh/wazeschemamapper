require 'sinatra'

get '/' do
  "Hello World!"
end

get '/getEventData' do
  content_type 'application/json'
  puts "consume arcgis endpoint and map response to waze format"
  return "test"
end

