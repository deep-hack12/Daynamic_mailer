class TampletController < ApplicationController
  def index
    @tamplets = Tamplet.all
  end

  def new
    @tamplet = Tamplet.new
  end

  def show
    @tamplet = Tamplet.find(params[:id])
    render json: @tamplet
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Tamplet not found' }, status: :not_found
  end

  def destroy
    begin
      @tamplet = Tamplet.find(params[:id])
      @tample.destroy
      render json: { message: 'Tamplet deleted successfully' }, status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Tamplet not found' }, status: :not_found
    end
  end

  def create
    @tamplet = Tamplet.new(tamplet_params)
    if @tamplet.save
      render json: @tamplet, status: :created
    else
      render json: @tamplet.errors, status: :unprocessable_entity
    end
  end
  private
  def tamplet_params
    params.require(:tamplet).permit(:language, :message, :usecase)
  end
end
