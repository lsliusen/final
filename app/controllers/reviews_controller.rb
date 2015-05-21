class ReviewsController < ApplicationController

  def index
    @reviews = Review.find_by(recipe_id: params["recipe_id"])
    @reviews = @reviews.order('date desc')
  end

  def show
    if @review == nil
      redirect_to reviews_url, notice: "review not found."
    end
  end

  def new
  end

  def create
    puts "in create"
    review = Review.new
    review.title = params[:title]
    review.comment = params[:comment]
    review.date = Time.new()
    review.stars = params[:stars].to_i
    review.recipe_id = params[:recipe_id]
    review.user_id = cookies[:user_id]
    review.save
    @reviews = Review.where(recipe_id: params[:recipe_id]).order('date desc')
    redirect_to recipe_url(:id => params[:recipe_id])
  end

  def edit
  end

  def update
    redirect_to reviews_url
  end

  def destroy
    review = Review.find_by(id: params[:id])
    review.delete
    puts review.errors.messages
    @reviews = Review.where(recipe_id: params[:recipe_id]).order('date desc')
    redirect_to recipe_url(id: params[:recipe_id])
  end

end
