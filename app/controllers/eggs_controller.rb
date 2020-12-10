class EggsController < ApplicationController
  before_action :set_egg, only: [:show, :update, :destroy]

  # GET /eggs
  def index
    if params[:movie_id]
      @movie = Movie.find(params[:movie_id])
      @eggs = @movie.eggs
    else
      @eggs = Egg.all
    end

    render json: @eggs
  end

  # GET /eggs/1
  def show
    render json: @egg
  end

  # POST /eggs
  def create
    @egg = Egg.new(egg_params)

    if @egg.save
      render json: @egg, status: :created, location: @egg
    else
      render json: @egg.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eggs/1
  def update
    if @egg.update(egg_params)
      render json: @egg
    else
      render json: @egg.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eggs/1
  def destroy
    @egg.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg
      @egg = Egg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def egg_params
      params.require(:egg).permit(:egg_movie, :egg, :image, :movie_id)
    end
end
