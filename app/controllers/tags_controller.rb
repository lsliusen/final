class TagsController < ApplicationController

  def index
    @tags = Tag.order('name asc')
  end

  def show
    @tag = Tag.find_by(id: params[:id])
    @recipes = @tag.recipes
  end

  def new
  end

  def create
  end

end
