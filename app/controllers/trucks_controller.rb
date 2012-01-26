class TrucksController < ApplicationController
  def morning
    @trucks = Truck.all(:conditions => 
      {
        :schedules => {
          :day_of_week => "Wednesday",
          :time_of_day => "Morning"
        }
      },
      :joins => :schedules)
    
    render :json => @trucks
    
  end

  def afternoon
    @trucks = Truck.all(:conditions => 
      {
        :schedules => {
          :day_of_week => "Wednesday",
          :time_of_day => "Afternoon"
        }
      },
      :joins => :schedules)
    
    render :json => @trucks
  end

  def evening
    @trucks = Truck.all(:conditions => 
      {
        :schedules => {
          :day_of_week => "Wednesday",
          :time_of_day => "Evening"
        }
      },
      :joins => :schedules)
    
    render :json => @trucks
  end

end
