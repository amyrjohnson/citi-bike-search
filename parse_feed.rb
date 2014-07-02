require 'httparty'
require 'pry'

class CBParser

  def self.parse
    response = HTTParty.get("http://www.citibikenyc.com/stations/json")

  # binding.pry


    station = response["stationBeanList"]
    broadway_station = station.select {|station| station["stationName"] == "Broadway & Battery Pl"}

    File.open("#{Time.now}.txt","w"){|file| file.write(broadway_station)}
  end 

#collect data to file or db 
#get website up with station data & saving to file or db

end 



# response.keys
# => ["executionTime", "stationBeanList"]

# response.class
# => HTTParty::Response - looks a lot like a hash 

# response["stationBeanList"].count
# => 332

# response["stationBeanList"].select {|station| station["statusKey"] != 1}}
# => returns array of 5 station hashes 






# => [{"id"=>72,
 #  "stationName"=>"W 52 St & 11 Ave",
 #  "availableDocks"=>19,
 #  "totalDocks"=>38,
 #  "latitude"=>40.76727216,
 #  "longitude"=>-73.99392888,
 #  "statusValue"=>"In Service",
 #  "statusKey"=>1,
 #  "availableBikes"=>13,
 #  "stAddress1"=>"W 52 St & 11 Ave",
 #  "stAddress2"=>"",
 #  "city"=>"",
 #  "postalCode"=>"",
 #  "location"=>"",
 #  "altitude"=>"",
 #  "testStation"=>false,
 #  "lastCommunicationTime"=>nil,
 #  "landMark"=>""},
 # {"id"=>79,
 #  "stationName"=>"Franklin St & W Broadway",
 #  "availableDocks"=>32,
 #  "totalDocks"=>33,
 #  "latitude"=>40.71911552,
 #  "longitude"=>-74.00666661,
 #  "statusValue"=>"In Service",
 #  "statusKey"=>1,
 #  "availableBikes"=>1,



 #big_ass_docks = response["stationBeanList"].select {|station| station["totalDocks"] >= 50}

 # => An array of 32 station hashes 
