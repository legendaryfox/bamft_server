class SchedulesController < ApplicationController
  def morning_trucks
    
    @schedules = Schedule.find(:all, :conditions => { :day_of_week => "Wednesday", :time_of_day => "Morning"} )
  end

  def afternoon_trucks
    @schedules = Schedule.find(:all, :conditions => { :day_of_week => "Wednesday", :time_of_day => "Afternoon"} )
  end

  def evening_trucks
    @schedules = Schedule.find(:all, :conditions => { :day_of_week => "Wednesday", :time_of_day => "Evening"} )
  end

end
