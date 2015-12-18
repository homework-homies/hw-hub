class ProducersController < ApplicationController
  def new
    @producer = Producer.new
  end

  def create
    @producer = Producer.create(producer_params)
    redirect_to '/login'
  end

  def show
    @producer = Producer.find(params[:id])
    @cohorts = @producer.cohorts

  end

  def destroy
    @producer = Producer.find(params[:id])
    @producer.destroy
    redirect_to "/"
  end

  private 
    def producer_params
      params.require(:producer).permit(:name, :email, :password, :password_confirmation)
    end
end  