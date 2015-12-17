class GistsController < ApplicationController

  def create
    @gist = Gist.create(gist_params)
    redirect_to @gist
  end

  def show
    @gists = Gist.find(params[:id])
  end

  private
    def gist_params
       params.require(:gists).permit(:title, :content, :gist_link, :instructor, :cohort)
    end  
end
