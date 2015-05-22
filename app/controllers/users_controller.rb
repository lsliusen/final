class UsersController < ApplicationController

  before_filter :authorize, only: [:show]

  def authorize
    @user = User.find_by(id: params[:id])
    if @user.id.blank? || session[:user_id].blank? || session[:user_id] != @user.id
      redirect_to root_url, notice: "Nice try."
      return
    end
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.user_name = params[:user_name]
    @user.password = params[:password]
    @user.email = params[:email]
    @user.gender = params[:gender]
    @user.create_date = Time.now
    @user.photo_url = params[:photo_url]
    @user.background = params[:background]
    if @user.save
      redirect_to root_url, notice: "Thanks for Signing Up!"
    else
      render "new"
    end
  end

end

