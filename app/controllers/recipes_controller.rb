class RecipesController < ApplicationController

  before_action :find_recipe, :only => [:show, :edit, :update, :destroy]
  before_action :require_user, :only => [:new, :create, :edit, :update, :destroy]
  before_action :authorize, :only => [:edit, :update, :destroy]
  before_action :find_tags, :only =>[:index, :edit, :update, :new, :create]

  def find_recipe
    @recipe = Recipe.find_by(id: params["id"])
  end

  def find_tags
    @tags = Tag.all
  end

  def require_user
    if !session[:user_id].present?
      redirect_to root_path, notice: "Please sign in first."
      return
    end
  end

  def authorize
    if @recipe.user_id != session[:user_id]
      redirect_to root_path, notice: "Operation not authorized."
      return
    end
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
    @reviews = @recipe.reviews.order('date desc')
    @tags = @recipe.tags
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
    recipe.transaction do
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
      @tags.each do |tag|
        if params["TagID#{tag.id}"].present?
          ct = Category.new
          ct.recipe_id = recipe.id
          ct.tag_id = tag.id
          ct.save
        end
      end
    end
    redirect_to recipes_url
  end

  def edit
    tags = @recipe.tags
    @marked = {}
    tags.each do |tag|
      @marked[tag.id] = true
    end
  end

  def update
    @recipe.transaction do
      @recipe.title = params[:title]
      @recipe.date = Time.new()
      @recipe.instruction = params[:instruction]
      @recipe.photo_url = params[:photo_url]
      @recipe.save

      @recipe.categories.each do |ct|
        ct.delete
      end

      @tags.each do |tag|
        if params["TagID#{tag.id}"].present?
          ct = Category.new
          ct.recipe_id = @recipe.id
          ct.tag_id = tag.id
          ct.save
        end
      end
    end
    if !@recipe.errors.any?
      redirect_to recipe_url(@recipe.id), notice: "Recipe updated"
      return
    else
      tags = @recipe.tags
      @marked = {}
      tags.each do |tag|
        @marked[tag.id] = true
      end
      render "edit"
    end
  end

  def destroy
    @recipe.transaction do
      reviews = @recipe.reviews
      reviews.each do |review|
        review.delete
      end
      cts = @recipe.categories
      cts.each do |ct|
        ct.delete
      end
      @recipe.delete
    end
    redirect_to recipes_url
  end

end
