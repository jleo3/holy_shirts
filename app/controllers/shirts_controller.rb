class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end

  def show
  end
end

