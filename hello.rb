require 'sinatra'
require 'httparty'

get '/' do
  "Hello World!"
end

get '/getEventData' do
	response = HTTParty.get('http://maps.raleighnc.gov/arcgis/rest/services/SpecialEvents/SpecialEventsView/MapServer/0/query?where=1%3D1&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=&returnGeometry=true&returnTrueCurves=false&maxAllowableOffset=&geometryPrecision=&outSR=4326&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&resultOffset=&resultRecordCount=&f=json')
	puts response.body, response.code, response.message, response.headers.inspect

	# convert to waze schema

	return response.body
end


get '/getAccidentClosureData'
