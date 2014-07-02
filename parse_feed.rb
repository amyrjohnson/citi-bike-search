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

### Creating website 
#get website up with station data & saving to file or db
#make git repo
#create class to create instances of stations from data
#type in name and resturn current state of that station 




### Logging data giving access to it 
#collect data to file or db 
#research gathering and storing data and then accessing it 

end 


