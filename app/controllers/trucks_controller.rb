class TrucksController < ApplicationController
  
  def full_dump
    #@trucks = Truck.all
    @trucks = Truck.select('id', 'name', 'cuisine', 'description')
    render :json => @trucks
    
    puts 'Rendering full Truck JSON dump'
    
  end
  
  def index
    @trucks = Truck.find(:all, :order => "name ASC")
  end
  
  def edit
    @truck = Truck.find(params[:id])
  end
  
  def update
    @truck = Truck.find(params[:id])
    if @truck.update_attributes(params[:truck])
      redirect_to trucks_path, :flash => { :success => "Truck updated." }
    else
      @title = "Edit Truck"
      render 'edit'
    end
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
