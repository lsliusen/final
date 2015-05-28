require 'net/smtp'
require 'mailfactory'

class UsersController < ApplicationController

  before_action :authorize, :only=>[:edit, :update, :edit_password, :update_password]

  def authorize
    @user = User.find_by(id: params[:id])
    if @user.id.blank? || session[:user_id].blank? || session[:user_id] != @user.id
      redirect_to root_url, notice: "Nice try."
      return
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @recipes = @user.recipes
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
    if params[:password] != params[:confirm_password]
      flash[:notice] = "Two passwords do not match."
      render "new"
      return
    end
    if @user.save
      redirect_to root_url, notice: "Thanks for Signing Up!"
      return
    else
      render "new"
      return
    end
  end

  def edit
  end

  def update
    @user.user_name = params[:user_name]
    @user.email = params[:email]
    @user.gender = params[:gender]
    @user.photo_url = params[:photo_url]
    @user.background = params[:background]
    puts @user.password
    if @user.save
      redirect_to "/users/#{session["user_id"]}", notice: "You have updated your Profile!"
      return
    else
      render "edit"
    end
  end
  def edit_password
  
  end

  def update_password
    if @user.authenticate(params[:old_password])
      if params[:new_password] != params[:confirm_password]
        flash[:notice] = "Two passwords do not match."
        render "edit_password"
        return
      end
      @user.password = params[:new_password]
      if @user.save
        ntc = "You have updated your Password!"
        redirect_to "/users/#{session["user_id"]}", notice: ntc
        return
      else
        ntc = "Failed updating password, try again!"
        redirect_to "/change_password/#{session["user_id"]}/edit_password", notice: ntc
        return
      end
    else
      ntc = "You Entered the Wrong Old Password."
      redirect_to "/change_password/#{session["user_id"]}/edit_password", notice: ntc
      return
    end
  end

  def forget_password
  end

  def generate_password
    chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ23456789'
    length = 10
    return Array.new(length) { chars[rand(chars.length)].chr }.join
  end

  def send_password
    to = params["email_address"]
    user = User.find_by(:email => to)
    if !user.present?
      redirect_to forget_password_path, notice: "Email not found"
      return
    end

    user.password = generate_password
    if !user.save
      redirect_to forget_password_path, notice: "Failed to generate new password, please try again"
      return
    end

    mail = MailFactory.new
    mail.from = "noreply@recipe.com"
    mail.to = to
    mail.subject = "New password of your Recipe account"
    mail.text = "Dear #{user.user_name},\n\nYour new password is #{user.password}.\n\nRecipe.com"
    host = "smtp.mandrillapp.com"
    port = 587
    sender = "lsliusen1986@gmail.com"
    #sender = ENV["RECIPE_MAIL_SENDER"]
    #port = ENV["RECIPE_MAIL_PORT"]
    #host = ENV["RECIPE_MAIL_HOST"]
    #mail.from = ENV["RECIPE_MAIL_FROM"]
    key = "lPYuVe53FBSZfTFaGuS9-w"
    Net::SMTP.start(host,port,'mandrillapp.com',sender,key) do |smtp|
      smtp.send_message(mail.to_s,sender,"samliu@uchicago.edu")
    end
    redirect_to root_path, notice: "A new password has been sent to your email address."
    return
  end

end

