# coding: utf-8

class CountriesController < ApplicationController
  # 国一覧
  def index
    @countries = Country.order("id")
  end

  # 検索
  def search
    @countries = Country.search(params[:q])
    render "index"
  end

  # 会員情報の詳細
  def show
    @country = Country.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
