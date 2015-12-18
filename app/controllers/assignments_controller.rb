class AssignmentsController < ApplicationController

  def new
    @assignment = Assignment.new
    @instructor = Instructor.find(sessions[:instructor_id])
  end

  def create
    @assignment = Assignment.create(assignment_params)
    @instructor = Instructor.find(sessions[:instructor_id])
    @assignment.instructor.push(@instructor)
    @cohort = Cohort.find_by(cohort_name: params[:cohort_selector]) 
    @assignment.cohort.push(@cohort)
    @assignment.assigned_on = Date.new
    @assignment.save
    redirect_to instructor_path(sessions[:instructor_id]) if sessions[:instructor_id]
  end

  def new
    @assignment = Assignment.new
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  private
     def assignment_params
        params.require(:assignment).permit(:title, :prompt_link, :assigned_on)
     end 
end  

