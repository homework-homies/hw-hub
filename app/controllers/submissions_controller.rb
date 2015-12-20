class SubmissionsController < ApplicationController
  def create
    @submission = Submission.create(submission_params)
    @student = Student.find(params[:student_id])
    @student.submissions.push(@submission)
    @assignment = Assignment.find_by(title: params[:assignment_selector])
    @assignment.submissions.push(@submission)
    redirect_to "/students/#{params[:student_id]}/submissions/#{@submission.id}"
  end

  def show
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @submission = Submission.find(params[:id])
    else
      redirect_to '/'
    end
  end

  def edit 
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @submission = Submission.find(params[:id])
    else
      redirect_to '/'
    end
  end

  def update
    @submission = Submission.find(params[:id])
    @submission = Submission.update(submission_params)
    redirect_to @submission
  end

  private
    def submission_params
       params.require(:submission).permit(:title, :student_id, :submission_link, :comments, :assignment_id, :grade_status)
    end  
end  