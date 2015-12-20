class StudentsController < ApplicationController

  def show
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @student = Student.find(params[:id])
      @instructors = @student.cohort.instructors if @student.cohort
      @assignments = Cohort.find(@student.cohort_id).assignments if @student.cohort.assignments
      @submissions = @student.submissions if @student.submissions
      @gists = Cohort.find(@student.cohort_id).gists if @student.cohort
      @new_submission = Submission.new
    else
      redirect_to '/'
    end
  end
 
  def new
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @student = Student.new
    else
      redirect_to '/'
    end
  end

  def create
    @student = Student.new(student_params)
    if @student.save 
      session[:student_id] = @student.id
    redirect_to @student
    elsif @student.password.length < 7
      flash[:notice] = "Passwords must contain at least 6 characters" 
      redirect_to '/'
    elsif @student.password != @student.password_confirmation
      flash[:notice] = "Passwords must match"
      redirect_to '/'
    else 
      flash[:notice] = "This email has already been registered. Please try logging in."
      redirect_to '/' 
    end 
  end

  def edit
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @student = Student.find(params[:id])
    else
      redirect_to '/'
    end
  end

private
  def student_params
      params.require(:student).permit(:name, :email, :cohort_id, :password, :password_confirmation)
  end

end  