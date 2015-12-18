class SubmissionsController < ApplicationController
  def create
    @submission = Submission.create(submission_params)
    redirect_to @submission
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def edit 
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])
    @submission = Submission.update(submission_params)
    redirect_to @submission
  end

  private
    def submission_params
       params.require(:submission).permit(:tile, :student_id, :submission_link, :comments, :assignment_id, :grade_status)
    end  
end  