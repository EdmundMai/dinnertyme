class KitchensController < ApplicationController
  def index
    @kitchens = Kitchen.all
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def new
    @kitchen = Kitchen.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @kitchens = []
    params[:kitchen].each do |kitchen|
      new_kitchen = Kitchen.new(kitchen)
      if new_kitchen.save
        @kitchens << new_kitchen
      end
    end
    respond_to do |format|
      format.js
    end
  end


  def edit
    @kitchen = Kitchen.find(params[:id])
  end

  def update
    @kitchen = Kitchen.find(params[:id])
    if @kitchen.update_attributes(params[:kitchen])
      redirect_to kitchens_path, :notice => "#{@kitchen.name}'s kitchen has been updated"
    else
      render 'edit'
    end
  end

  def destroy
    @kitchen = Kitchen.find(params[:id])
    @kitchen.destroy
    redirect_to kitchens_path, :notice => "Kitchen successfully deleted."
  end
end
