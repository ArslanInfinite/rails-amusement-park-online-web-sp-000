class AttractionsController < ApplicationController
  before_action :find_attraction, only: [:show, :edit, :update]

  def show
    @attraction = Attraction.find(params[:id])
  end

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    if @attraction
      redirect_to attraction_path(@attraction)
    else
      render :new
    end
  end 

  def edit
  end

  def update
    @attraction.update(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  private

  def find_attraction
    @attraction = Attraction.find_by(id: params[:id])
  end

  def attraction_params
    params.require(:attraction).permit(:name, :height, :nausea_rating, :happiness_rating, :min_height)
  end

end