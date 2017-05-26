class CitiesController < ApplicationController
  def index
  end

  # 検索
  def search
    @cities = City.search(params[:q])
    render "index"
  end

  # 会員情報の詳細
  def show
    @cities = City.find(params[:id])
  end
end
