# coding: utf-8

class CountriesController < ApplicationController
  # 国一覧
  def index
    @countries = Country.order("id")
  end

  # 国ID検索
  def search
    @countries = Country.search(params[:q])
    render "index"
  end

  # 国の詳細
  def show
    @country = Country.find(params[:id])
  end

end
