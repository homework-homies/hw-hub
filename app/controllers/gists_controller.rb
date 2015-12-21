class GistsController < ApplicationController
  
  def create
    @gist = Gist.create(gist_params)

    if @gist.cohort.students.any?
      @gist.cohort.students.each do |student|
        GistMailer.gist_email(student.email).deliver_now
      end 
    end
    
      redirect_to @gist
  end

  def show
    def markdown(text) # Define method markdown with redcarpet gem
      Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(text)
    end

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
