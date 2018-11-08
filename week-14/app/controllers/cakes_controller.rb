class CakesController < ApplicationController
  SORTABLE_ATTRIBUTES = [:size, :message, :pickup, :notes]

  def index
    @cakes = Cake.all

    if params[:sort].present? && SORTABLE_ATTRIBUTES.include?(params[:sort].to_sym)
      @cakes = @cakes.order(params[:sort].to_sym => :asc)
    end

    # More code here
    @cakes = @cakes.limit(2)
  end

  def new
    @cake = Cake.new
  end

  def create
    @cake = Cake.new(cake_params)

    if @cake.save
      redirect_to root_path
    else
      render :new
    end
  end

  def assign
    chef = Chef.find_by(id: params[:chef_id])
    cake = Cake.find_by(id: params[:cake_id])

    return head :not_found unless cake && chef

    begin
      chef.assign!(cake)
      redirect_to cakes_path
    rescue RuntimeError
      @cakes = Cake.all.order(pickup: :desc)
      render :index, status: :bad_request
    end
  end

  private

  def cake_params
    params.require(:cake).permit(:size, :message, :pickup, :notes)
  end
end
