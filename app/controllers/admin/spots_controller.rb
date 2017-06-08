class Admin::SpotsController < ApplicationController

  def index
    @spots = Spot.order("id")
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def create
    @spot = Spot.new(params[:spot], :as => :admin)
      if @spot.save
        redirect_to [:admin, @spot], notice: 'Spot was successfully created.'
      else
        render 'new'
      end
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.assign_attributes(params[:spot], :as => :admin)
      if @spot.save
        redirect_to [:admin, @spot], notice: 'Spot was successfully updated.'
      else
        render 'edit'
      end
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to [:admin, @spot], notice: 'Spot deleted.'
  end

end
