class GistsController < ApplicationController

  def create
    @gist = Gist.create(gist_params)
    @gist.cohort = Cohort.find_by(name: params[:cohort_select])
    @gist.save()
    @gist.cohort.students.each do |student|
        GistMailer.gist_email(student.email).deliver_now
    end 
      redirect_to @gist
  end

  def show
    @gist = Gist.find(params[:id])
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
  end

  private
    def gist_params
       params.require(:gist).permit(:title, :content, :gist_link, :date, :instructor_id, :cohort_id)
    end  
end
