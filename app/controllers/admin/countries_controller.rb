class Admin::CountriesController < ApplicationController

  def index
    @countries = Country.order("id")
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end

end
