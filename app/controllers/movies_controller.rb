class MoviesController < ApplicationController

  before_action :find_movie, :only => [:show, :edit, :update, :destroy]
  # before_action :find_movie, :except => [:index, :create, :new]

  def find_movie
    @movie = Movie.find_by(id: params["id"])
  end

  def index
    if params["keyword"].present?
      @movies = Movie.where("title LIKE '%#{params["keyword"]}%'")
    else
      @movies = Movie.all
    end

    @movies = @movies.order('title asc')
  end

  def show
    if @movie == nil
      redirect_to movies_url, notice: "Movie not found."
    end
  end

  def new
    @directors = Director.order('name')
  end

  def create
    movie = Movie.new
    movie.title = params[:title]
    movie.year = params[:year]
    movie.runtime = params[:runtime]
    movie.rated = params[:rated]
    movie.stars = params[:stars]
    movie.director_id = params[:director_id]
    movie.plot = params[:plot]
    movie.poster_url = params[:poster_url]
    movie.save
    redirect_to movies_url
  end

  def edit
  end

  def update
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.runtime = params[:runtime]
    @movie.rated = params[:rated]
    @movie.stars = params[:stars]
    @movie.director_id = params[:director_id]
    @movie.plot = params[:plot]
    @movie.poster_url = params[:poster_url]
    @movie.save
    redirect_to movies_url
  end

  def destroy
    @movie.delete
    redirect_to movies_url
  end

end
