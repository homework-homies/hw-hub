class CohortsController < ApplicationController
  
  def new
    @cohort = Cohort.new
    @producers = Producer.all
  end

  def create
    @cohort = Cohort.create(cohort_params)
    @instructor = Instructor.find(session[:instructor_id])
    @cohort.instructors.push(@instructor)
    @cohort.producer = Producer.find_by(name: params["producer_select"])
    @cohort.save()
    redirect_to @cohort
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students
    @gists = @cohort.gists
  end

  private
    def cohort_params
       params.require(:cohort).permit(:cohort_name, :producer_select, :start_on, :end_on)
    end 

end