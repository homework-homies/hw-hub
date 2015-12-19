class ProducersController < ApplicationController
  def new
    @producer = Producer.new
  end

  def create
    @producer = Producer.new(producer_params)
    if @producer.save 
      session[:producer_id] = @producer.id
      redirect_to @producer
    elsif @producer.password.length < 7
      flash[:notice] = "Passwords must contain at least 6 characters"
      redirect_to '/'
    end

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