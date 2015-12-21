class InstructorsController < ApplicationController

  def new
      @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      session[:instructor_id] = @instructor.id
      redirect_to @instructor
    elsif @instructor.password.length < 7
      flash[:notice] = "Passwords must contain at least 6 characters"
      redirect_to '/'
    elsif @instructor.password != @instructor.password_confirmation
      flash[:notice] = "Passwords must match"
      redirect_to '/'
    else
      flash[:notice] = "This email has already been registered. Please try logging in."
      redirect_to '/'
    end
  end
 
  def show
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @instructor = Instructor.find(params[:id])
      @cohorts = @instructor.cohorts if @instructor.cohorts
      @gists = @instructor.gists if @instructor.gists
      @assignments = @instructor.assignments if @instructor.assignments
      @new_gist = Gist.new
    else
      redirect_to '/'
    end
  end

  private
    def instructor_params
      params.require(:instructor).permit(:name, :email, :password, :password_confirmation)
    end
end  