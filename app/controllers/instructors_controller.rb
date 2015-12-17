class InstructorsController < ApplicationController

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create(instructor_params)
    redirect_to "/login"
  end

  def show
    @instructor = Instructor.find(params[:id])
    @cohorts = @instructor.cohorts
    @gists = @instructor.gists
    @assignments = @instructor.assignments
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to "/"
  end

  private
    def instructor_params
      params.require(:instructor).permit(:name, :email, :password, :password_confirmation)
  end
end  