class MenuItemsController < ApplicationController
  def new
    @menu_item = MenuItem.new
    @title = "New Menu Item"
  end
  
  def create
    @menu_item = MenuItem.create(params[:menu_item])
    if @menu_item.save
      
      # successfully saved
      redirect_to trucks_path, :flash => { :success => "Menu Item created." }
    else
      @title = "New Menu Item"
      render 'new'
    end
  end
  
  def full_dump
  
    @menu_items = MenuItem.select('id', 'name', 'description', 'price', 'truck_id')
    render :json => @menu_items
    
    puts 'Rendering full MenuItem JSON dump'
    
  end
    
  

  def edit
    @menu_item = MenuItem.find(params[:id])
  end
  
  def update
    @menu = MenuItem.find(params[:id])
    if @menu.update_attributes(params[:menu_item])
      redirect_to trucks_path, :flash => { :success => "Menu Item updated." }
    else
      @title = "Edit Menu Item"
      render 'edit'
    end
  end


  def index
    @menu_items = MenuItem.find(:all, :order => "truck_id ASC")
  end

end
