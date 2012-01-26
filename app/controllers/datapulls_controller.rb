class DatapullsController < ApplicationController
  def full
    Datapull.make_daily_pull
    
  end

  def morning
    
    
  end

  def afternoon
    
    
  end

  def evening
    
    
  end

end
