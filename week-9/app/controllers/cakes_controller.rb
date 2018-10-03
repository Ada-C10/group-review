class CakesController < ApplicationController
  def index
    @cakes = Cake.all.order(pickup: :desc)
  end
end
