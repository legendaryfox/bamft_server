class Datapull < ActiveRecord::Base
  
  attr_accessible :time_of_day, :day_of_week, :api_data, :checksum
  serialize :api_data
  
  def pull_data(request_tod)
    # Grab newest information from API according to request_tod
    # TODO: We don't know how to request for specific days
    
    # First, we pull
    food_trucks_api = "http://hubmaps2.cityofboston.gov/ArcGIS/rest/services/Dev_services/food_trucks/MapServer/" + request_tod.to_s + "/query?text=%25&outFields=GPS%2CLocation%2CXCoord%2CYCoord%2CDayOfWeek%2CTimeOfDay%2CTestFld%2CShape&f=pjson"
    uri = URI.parse(food_trucks_api)
    api_content = open(uri) {|f| f.read }
    
    # Next, we store this information
    self.api_data = JSON.parse(api_content)
    self.checksum = make_checksum(self.api_data.to_s)
    self.time_of_day = request_tod
    self.day_of_week = self.api_data['features'][0]['attributes']['DayOfWeek']
    
  end
  
  def update_data!
    # Update our database with information from *THIS* (and ONLY this) instance of datapull
    
    
    # First, we go through locations
    self.api_data['features'].each do |feature|
      
      
      # Locations
      location_name = feature['attributes']['Location']
      location_x = feature['attributes']['XCoord']
      location_y = feature['attributes']['YCoord']
      
      
      day_of_week = feature['attributes']['DayOfWeek']
      time_of_day = feature['attributes']['TimeOfDay']
      
      if (Landmark.find(:all, :conditions => { :name => location_name, :xcoord => location_x, :ycoord => location_y})).count == 0
        # This location is not in our database. Create and log      
        my_landmark = Landmark.create!(:name => location_name, :xcoord => location_x, :ycoord => location_y)
        NEW_RECORD_LOG.info "Created a new landmark #{location_name} at (#{location_x}, #{location_y})."
      else
        # TODO: Refresh the databse with a touch, to keep track of freshness
        my_landmark = Landmark.find(:first, :conditions => { :name => location_name, :xcoord => location_x, :ycoord => location_y})
      end
      
      # Trucks
      testfld = feature['attributes']['TestFld']
      
      # extract the truck name(s) and url(s)
      # String.scan(/\A(.*?)<br\/>|<br\/>\s(.*?)<br\/><a/)
      
      #this section could probably be done better...
      regex_names = testfld.scan(/\A(.*?)<br\/>|<br\/>\s(.*?)<br\/><a/)
      regex_names.each do |name_array|
        name_array.each do |truck_name|
          if truck_name
            # Do something with this name, since this is VALID
            
            if (Truck.find(:all, :conditions => { :name => truck_name})).count == 0
              # This truck is not in our database. Create and log
              my_truck = Truck.create!(:name => truck_name)
              NEW_RECORD_LOG.info "Created a new truck #{truck_name}"
            else
              
              # This truck exists.
              
              my_truck = Truck.find_by_name(truck_name)
            end
            
      # SCHEDULES
            
            # While we're in here, we'll make schedule.
            
           
           
            # First check to see if the truck already has this TOD/DOW in its schedules
            if (Schedule.find(:all, :conditions => { 
                :truck_id => my_truck.id, 
                :landmark_id => my_landmark.id, 
                :time_of_day => time_of_day,
                :day_of_week => day_of_week })).count == 0
                
                # This schedule is not in our database. Create and log
                my_schedule = Schedule.create!(:truck_id => my_truck.id, :landmark_id => my_landmark.id, :time_of_day => time_of_day, :day_of_week => day_of_week)
                NEW_RECORD_LOG.info "Created a new schedule for #{my_truck.name} at #{my_landmark.name} on #{day_of_week} #{time_of_day}"
                
            else
              #This schedule already exists.
              
            end
            
          end
        end
      end
      
      
      
      
      
      
      
      
      
      
    end
    
    
    
    
    
  end
  
  def make_checksum(string)
    Digest::SHA2.hexdigest(string)
  end
  
  private
  
    def extract_truck_name
      
    end
    
    def extract_truck_url
      
    end
  
  
  
end



# == Schema Information
#
# Table name: datapulls
#
#  id          :integer         not null, primary key
#  checksum    :string(255)
#  notes       :text
#  time_of_day :integer
#  day_of_week :string(255)
#  api_data    :text
#  created_at  :datetime
#  updated_at  :datetime
#
