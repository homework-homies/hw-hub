class AssignmentsController < ApplicationController

  def create
    @assignment = Assignment.create(assignment_params)
    redirect_to instructor_path(sessions[:instructor_id]) if sessions[:instructor_id]
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  private
     def assignment_params
        params.require(:assignment).permit(:title, :prompt_link, :assigned_on)
     end 
end  

