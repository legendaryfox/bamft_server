class SchedulesController < ApplicationController
  
  def full_dump
     #@schedules = Schedule.all
     
     @schedules = Schedule.select('id', 'day_of_week', 'time_of_day', 'truck_id', 'landmark_id')

     render :json => @schedules

     puts 'Rendering full Schedule JSON dump'

   end
  
  def morning_trucks
    
    @schedules = Schedule.find(:all, :conditions => { :day_of_week => "Wednesday", :time_of_day => "Morning"} )
    
    render :json => @schedules
    
  end

  def afternoon_trucks
    @schedules = Schedule.find(:all, :conditions => { :day_of_week => "Wednesday", :time_of_day => "Afternoon"} )
  end

  def evening_trucks
    @schedules = Schedule.find(:all, :conditions => { :day_of_week => "Wednesday", :time_of_day => "Evening"} )
  end

end
