class ReviewsController < ApplicationController

  before_action :require_user, :only =>[:create, :destroy]
  before_action :authorize, :only =>[:destroy]

  def require_user
    if !session[:user_id].present?
      redirect_to root_path, notice: "Please sign in first."
      return
    end
  end

  def authorize
    @recipe = Review.find_by(:id => params[:id]).recipe
    if @recipe.user_id != session[:user_id]
      redirect_to root_path, notice: "Operation not authorized."
      return
    end
  end

  def create
    @review = Review.new
    @review.title = params[:title]
    @review.comment = params[:comment]
    @review.date = Time.new()
    @review.stars = params[:stars].to_i
    @review.recipe_id = params[:recipe_id]
    @review.user_id = session[:user_id]
    @review.transaction do
      @review.save
      recipe = Recipe.find_by(:id => params[:recipe_id])
      recipe.num_reviews += 1
      recipe.stars = Review.where(:recipe_id => recipe.id).sum(:stars) / recipe.num_reviews
      recipe.save
    end
    @reviews = Review.where(recipe_id: params[:recipe_id]).order('date desc')
    if @review.errors.present?
      @recipe = Recipe.find_by(:id => params[:recipe_id])
      render "/recipes/show", notice: @review.errors.messages
    else
      redirect_to recipe_url(:id => params[:recipe_id])
    end
  end

  def destroy
    review = Review.find_by(id: params[:id])
    review.transaction do
      review.delete
      recipe = Recipe.find_by(:id => params[:recipe_id])
      recipe.num_reviews -= 1
      recipe.stars = Review.where(:recipe_id => recipe.id).sum(:stars) / recipe.num_reviews
      recipe.save
    end
    @reviews = Review.where(recipe_id: params[:recipe_id]).order('date desc')
    redirect_to recipe_url(id: params[:recipe_id])
  end

end
