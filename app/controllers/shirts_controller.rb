class ShirtsController < ApplicationController
  before_filter :load_resource, only: [:show, :edit, :update]

  def index
    @shirts = Shirt.search_for(params[:q]) || Shirt.all
  end

  def show
  end

  def new
    @shirt = Shirt.new
  end

  def create
    Shirt.create(shirt_params)
    redirect_to shirts_path
  end

  def edit
  end

  def update
    @shirt.update(shirt_params)
    redirect_to @shirt
  end

  private

  def load_resource
    @shirt = Shirt.find(params[:id])
  end

  def shirt_params
    params.require(:shirt).permit(:name, :description)
  end
end

