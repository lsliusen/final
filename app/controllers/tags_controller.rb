class TagsController < ApplicationController

  def index
    @tags = Tag.order('name asc')
  end

  def show
    @recipes = Tag.find_by(id: params[:id]).recipes
  end

  def new
  end

  def create
  end

end
