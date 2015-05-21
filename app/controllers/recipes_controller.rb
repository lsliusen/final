class RecipesController < ApplicationController

  before_action :find_recipe, :only => [:show, :edit, :update, :destroy]

  def find_recipe
    @recipe = Recipe.find_by(id: params["id"])
    #TODO : generate stars from reviews
    @recipe.stars = 3
  end

  def index
    cookies["user_id"] = User.all.first.id
    @recipes = Recipe.order('title asc')
    @recipes.each do |rcp|
        rcp.date = rcp.date.getlocal.strftime("%Y-%m-%d %H:%M:%S")
        rcp.stars = 3
#TODO : generate stars from reviews
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
    end
    @reviews = Review.where(recipe_id: @recipe.id).order('date desc')
    @reviews.each do |review|
        puts review.stars
    end
    puts "asdfasdfsadf"
  end

  def new
  end

  def create
    recipe = Recipe.new
    recipe.title = params[:title]
    recipe.instruction = params[:instruction]
    recipe.date = Time.new()
    recipe.photo_url = params[:photo_url]
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
    @recipe.delete
    redirect_to recipes_url
  end

end
