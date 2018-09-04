class NutrientsController < ApplicationController

def index
  @nutrients = Nutrient.all
end


def show
  @nutrient = Nutrient.find(params[:id])
end


def new
  @nutrient = Nutrient.new
end

def create
  @nutrient = Nutrient.new(nutrient_params)
  if @nutrient.save
    redirect_to @nutrient
  else
    render :new
  end
end

def edit
  @nutrient = Nutrient.find(params[:id])
end


def update
    @nutrient = Nutrient.find(params[:id])
  if @nutrient.update(nutrient_params)
    redirect_to @nutrient
  else
    render :edit
  end
end


  private
  def nutrient_params
    params.require(:nutrient).permit(:name, :food_id)
  end


end
