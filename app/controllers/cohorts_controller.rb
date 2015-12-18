class CohortsController < ApplicationController
  def create
    @cohort = Cohort.create({
      cohort_name: params["cohort_name"],
      producer_id: params["producer_id"],
      start_on: params["start_on"],
      end_on: params["end_on"]
    })
    redirect_to @cohort
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students
  end

end
