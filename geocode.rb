require "sinatra"
require "sinatra/reloader"
require "geocoder"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }                                     

get "/" do
  view "geocode"
end

get "/mapview" do
    results = Geocoder.search(params["q"])
    lat_long = results.first.coordinates #=> [48.856614, 2.3522219] # latitude and longitude
    "The coordinates of #{params["q"]} are: Latitude: #{lat_long[0]} , Longitude: #{lat_long[1]}" 
end