class TrucksController < ApplicationController
  
  def full_dump
    #@trucks = Truck.all
    @trucks = Truck.select('id', 'name', 'cuisine', 'description')
    render :json => @trucks
    
    puts 'Rendering full Truck JSON dump'
    
  end
  
  def morning
    @trucks = Truck.all(:conditions => 
      {
        :schedules => {
          :day_of_week => "Thursday", #Date::DAYNAMES[Time.now.wday],
          :time_of_day => "Morning"
        }
      },
      :joins => :schedules)
    
    render :json => @trucks
    
    puts 'rendering for ' + Date::DAYNAMES[Time.now.wday]
    
  end

  def afternoon
    @trucks = Truck.all(:conditions => 
      {
        :schedules => {
          :day_of_week => "Thursday", #Date::DAYNAMES[Time.now.wday],
          :time_of_day => "Afternoon"
        }
      },
      :joins => :schedules)
    
    render :json => @trucks
    
    puts 'rendering for ' + Date::DAYNAMES[Time.now.wday]
  end

  def evening
    @trucks = Truck.all(:conditions => 
      {
        :schedules => {
          :day_of_week => "Thursday", #Date::DAYNAMES[Time.now.wday],
          :time_of_day => "Evening"
        }
      },
      :joins => :schedules)
    
    render :json => @trucks
    
    puts 'rendering for ' + "Thursday" #Date::DAYNAMES[Time.now.wday]
  end

end
