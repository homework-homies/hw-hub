class GistsController < ApplicationController
  
  def create
    @gist = Gist.create(gist_params)

    @gist.cohort = Cohort.find_by(cohort_name: params[:cohort_select])
    @gist.save
    
    @gist.cohort.students.each do |student|
        GistMailer.gist_email(student.email).deliver_now
    end 
      redirect_to @gist
  end

  def show
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @gist = Gist.find(params[:id])
    else
      redirect_to '/'
    end
  end

  private
    def gist_params
      params.require(:gist).permit(:title, :content, :gist_link, :date, :instructor_id, :cohort_id)
    end  
end
