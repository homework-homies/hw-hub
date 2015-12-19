class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @instructors = @student.cohort.instructors if @student.cohort
    @assignments = Cohort.find(@student.cohort_id).assignments if @student.cohort.assignments
    @submissions = @student.submissions if @student.submissions
    @gists = Cohort.find(@student.cohort_id).gists if @student.cohort
    @new_submission = Submission.new
  end
 
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    session[:student_id] = @student.id
    redirect_to @student
  end

  def edit
    @student = Student.find(params[:id])
  end

private
  def student_params
      params.require(:student).permit(:name, :email, :cohort_id, :password, :password_confirmation)
  end

end  