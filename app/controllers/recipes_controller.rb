class RecipesController < ApplicationController

  before_action :find_recipe, :only => [:show, :edit, :update, :destroy]

  def find_recipe
    @recipe = Recipe.find_by(id: params["id"])
  end

  def index
    @recipes = Recipe.order('title asc')
    @recipes.each do |rcp|
        rcp.date = rcp.date.getlocal.strftime("%Y-%m-%d %H:%M:%S")
=begin
        review = Review.find_by_recipe_id(rcp.id)
        if review == nil
            rcp.stars = 0
        end
=end
    end
  end

  def show
    if @recipe == nil
      redirect_to recipes_url, notice: "recipe not found."
      return
    end
    @review = Review.new
    @reviews = Review.where(recipe_id: @recipe.id).order('date desc')
  end

  def new
    if !session[:user_id].present?
        redirect_to root_path, notice: "Please sign in to share your recipe."
        return
    end
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.new
    recipe.title = params[:title]
    recipe.photo_url = params[:photo_url]
    recipe.ingredients = params[:ingredients]
    recipe.instruction = params[:instruction]
    recipe.duration = params[:duration]
    recipe.date = Time.new()
    recipe.stars = params[:stars].to_i
    recipe.num_reviews = 0
    recipe.user_id = session[:user_id]
    recipe.save
    redirect_to recipes_url
  end

  def edit
  end

  def update
    @recipe.title = params[:title]
    @recipe.date = Time.new()
    @recipe.instruction = params[:instruction]
    @recipe.photo_url = params[:photo_url]
    @recipe.save
    redirect_to recipes_url
  end

  def destroy
    @recipe.transaction do
      reviews = Review.where(:recipe_id => @recipe.id)
      reviews.each do |review|
        review.delete
      end
      @recipe.delete
    end
    redirect_to recipes_url
  end

end
