class GistsController < ApplicationController

  def create
    @gist = Gist.create(gist_params)
    redirect_to @gist
  end

  def show
    @gist = Gist.find(params[:id])
  end

  private
    def gist_params
       params.require(:gist).permit(:title, :content, :gist_link, :instructor_id, :cohort_id)
    end  
end
