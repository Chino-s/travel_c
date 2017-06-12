class Admin::CountriesController < ApplicationController

  def index
    @countries = Country.order("id")
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
    @country = Country.new(params[:country], :as => :admin)
      if @country.save
        redirect_to [:admin, @country], notice: 'Country was successfully created.'
      else
        render 'new'
      end
  end

  def update
    @country = Country.find(params[:id])
    @country.assign_attributes(params[:country], :as => :admin)
      if @country.save
        redirect_to [:admin, @country], notice: 'Country was successfully updated.'
      else
        render 'edit'
      end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to [:admin, @country], notice: 'Country deleted.'

  end

    def country_params
      params.require(:country).permit(:name, :language, :capital, :area_id, :popular_ranking, :imagephoto, :googlemap)
    end


end
