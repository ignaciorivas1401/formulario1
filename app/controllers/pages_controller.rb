class PagesController < ApplicationController
  http_basic_authenticate_with name: "ignaciorivas", password: "qwerty", only: :dashboard

  def index
  end

  def create
    @user = User.create(email: params[:email],age: params[:age], Comment: params[:Comment])
  end

  def dashboard
    if params[:email].present?
      @users = User.where('email =?', params[:email])
    else 
      @users = User.find_valid
    end
  end
end
