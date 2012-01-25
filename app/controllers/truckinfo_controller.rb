class TruckinfoController < ApplicationController
  def fetch
    #require 'open-uri'
    food_trucks_api = "http://hubmaps2.cityofboston.gov/ArcGIS/rest/services/Dev_services/food_trucks/MapServer/1/query?text=%25&outFields=GPS%2CLocation%2CXCoord%2CYCoord%2CDayOfWeek%2CTimeOfDay%2CTestFld%2CShape&f=pjson"
    uri = URI.parse(food_trucks_api)
    api_content = open(uri) {|f| f.read }
    parsed_json = JSON.parse(api_content)
    
    #puts YAML::dump(api_content)
    #puts YAML::dump(parsed_json)
    #puts YAML::dump(parsed_json['features'])
    parsed_json['features'].each do |feature|
      puts YAML::dump(feature['attributes']['TestFld'])
    end
    
    
  end

end
