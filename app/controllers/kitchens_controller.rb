class KitchensController < ApplicationController
  def index
    @kitchens = Kitchen.all
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(params[:kitchen])
    respond_to do |format|
      if @kitchen.save
        format.js
      end
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
