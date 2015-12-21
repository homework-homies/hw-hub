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
    elsif @producer.password != @producer.password_confirmation
      flash[:notice] = "Passwords must match"
      redirect_to '/'
    else 
      flash[:notice] = "This email has already been registered. Please try logging in. "
      redirect_to '/'
    end

  end

  def show
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @producer = Producer.find(params[:id])
      @cohorts = @producer.cohorts if @producer.cohorts
    else
      redirect_to '/'
    end
  end

  private 
    def producer_params
      params.require(:producer).permit(:name, :email, :password, :password_confirmation)
    end
end  