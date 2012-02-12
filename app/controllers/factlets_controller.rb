class FactletsController < ApplicationController
  def new
    @factlet = Factlet.new
    @title = "New Factlet"
  end
  
  def create
    @factlet = Factlet.create(params[:factlet])
    if @factlet.save
      
      # successfully saved
      redirect_to factlets_path, :flash => { :success => "Factlet created." }
    else
      @title = "New Factlet"
      render 'new'
    end
  end

  def edit
     @factlet = Factlet.find(params[:id])
   end

   def update
     @factlet = Factlet.find(params[:id])
     if @factlet.update_attributes(params[:factlet])
       redirect_to factlets_path, :flash => { :success => "Factlet updated." }
     else
       @title = "Edit Factlet"
       render 'edit'
     end
   end


   def index
     @factlets = Factlet.all
   end

  def full_dump
  
    @factlets = Factlet.select('id', 'title', 'content', 'truck_id')
    render :json => @factlets
    
    puts 'Rendering full Factlets JSON dump'
    
  end

  def random
  end
  
  def destroy
    @factlet = Factlet.find(params[:id])
    @factlet.destroy
    redirect_to factlets_path, :flash => { :success => "Factlet Deleted" }
    
  end

end
