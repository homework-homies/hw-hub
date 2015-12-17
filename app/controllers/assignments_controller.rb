class AssignmentsController < ApplicationController

  def create
    @assignment = Assignment.create(assignment_params)
    redirect_to "/instructors/:id"
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  private
     def assignment_params
        params.require(:assignment).permit(:title, :promopt_link, :assigned_on)
     end 
end  

