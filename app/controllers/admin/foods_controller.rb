class Admin::FoodsController < ApplicationController

  def index
    @foods = Food.order("id")
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def edit
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.new(params[:food], :as => :admin)
      if @food.save
        redirect_to [:admin, @food], notice: 'Food was successfully created.'
      else
        render 'new'
      end
  end

  def update
    @food = Food.find(params[:id])
    @food.assign_attributes(params[:food], :as => :admin)
      if @food.save
        redirect_to [:admin, @food], notice: 'Food was successfully updated.'
      else
        render 'edit'
      end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to [:admin, @food], notice: 'Food deleted.'
  end

end
