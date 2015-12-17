class SubmissionsController < ApplicationController
  def create
    @submission = Submission.create({
      student_id: params["student_id"],
      assignment_id: params["assignment_id"],
      submitted_on: params["submitted_on"],
      grade_status: params["grade_status"],
      comments: params["comments"]
    })
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
    @submission = Submission.update({
      student_id: params["student_id"],
      assignment_id: params["assignment_id"],
      submitted_on: params["submitted_on"],
      grade_status: params["grade_status"],
      comments: params["comments"]
    })
    redirect_to @submission
  end
end  