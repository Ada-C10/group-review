class CakesController < ApplicationController
  def index
    @cakes = Cake.all.order(pickup: :desc)
  end

  def assign
    chef = Chef.find_by(id: params[:chef_id])
    cake = Cake.find_by(id: params[:cake_id])

    return head :not_found unless cake && chef

    chef.assign!(cake)
    redirect_to cakes_path
  end
end
