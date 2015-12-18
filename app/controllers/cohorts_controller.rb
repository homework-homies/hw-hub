class CohortsController < ApplicationController
  
  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.create(cohort_params)
    redirect_to @cohort
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students
    @gists = @cohort.gists
  end

  private
    def cohort_params
       params.require(:cohort).permit(:cohort_name, :producer_id, :start_on, :end_on)
    end 

end