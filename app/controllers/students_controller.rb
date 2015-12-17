class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @instructors = Cohort.find(@student.cohort_id).instructors
    @assignments = Cohort.find(@student.cohort_id).assignments
    @submissions = @student.submissions
    @gists = Cohort.find(@student.cohort_id).gists
    @new_submission = Submission.new

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to "/login"
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to "/"
  end

private
  def student_params
      params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end

end  