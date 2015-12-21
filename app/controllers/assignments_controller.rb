class AssignmentsController < ApplicationController

  def new
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @assignment = Assignment.new
      @instructor = Instructor.find(session[:instructor_id])
    else
      redirect_to '/'
    end
  end

  def create
    @assignment = Assignment.create(assignment_params)
    redirect_to instructor_path(session[:instructor_id]) if session[:instructor_id]
  end

  def show
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @assignment = Assignment.find(params[:id])
    else
      redirect_to '/'
    end
  end

  private
     def assignment_params
        params.require(:assignment).permit(:title, :prompt_link, :assigned_on, :cohort_id, :instructor_id)
     end 
end  

