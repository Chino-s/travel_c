class Admin::CitiesController < ApplicationController

  def index
    @cities = City.order("id")
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def create
    @city = City.new(params[:city], :as => :admin)
      if @city.save
        redirect_to [:admin, @city], notice: 'City was successfully created.'
      else
        render 'new'
      end
  end

  def update
    @city = City.find(params[:id])
    @city.assign_attributes(params[:city], :as => :admin)
      if @city.save
        redirect_to [:admin, @city], notice: 'City was successfully updated.'
        else
        render 'edit'
      end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to [:admin, @city], notice: 'City deleted.'

  end

    def city_params
      params.require(:city).permit(:name, :area_id, :city_ranking, :imagephoto,:countries_id)
    end

end
