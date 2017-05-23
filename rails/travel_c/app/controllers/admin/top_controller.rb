# coding: utf-8

class Admin::TopController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def after_sign_in_path_for(resource)
    if (session[:top] == root_path)
      super
    else
      session[:top] || root_path
    end
  end
end
