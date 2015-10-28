require 'sinatra'
require 'json'

get '/' do
  "Hello World!"
end

get '/getEventData' do
  content_type 'application/json'
  corevents = open("http://maps.raleighnc.gov/arcgis/rest/services/SpecialEvents/SpecialEventsView/MapServer/0/query?where=1%3D1&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=&returnGeometry=true&returnTrueCurves=false&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&resultOffset=&resultRecordCount=&f=pjson").read
  corevents = JSON.parse(corevents)
  puts "get event name..."
  puts corevents['EVENT_NAME']
  puts "consume arcgis endpoint and map response to waze format"
  return "testing 123"
end

