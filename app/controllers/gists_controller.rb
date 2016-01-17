class GistsController < ApplicationController
  
  def create
    @gist = Gist.create(gist_params)
    if @gist.cohort.students.any?
      @gist.cohort.students.each do |student|
        GistMailer.gist_email(student.email).deliver_now
      end 
    end
    client = Octokit::Client.new(:access_token => session[:github_access_token])
    response = client.create_gist({
      'description' => "#{@gist.title}",
      'public' => true,
      'files' => {
      'gist1.txt' => {
        'content' => "#{@gist.content}"
        }
      }
    })
    @gist.gist_link = response[:html_url]
    @gist.save
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

  def verify
    code = params[:code]
    response = HTTParty.post(
        "https://github.com/login/oauth/access_token",
        :body => {
          :code          => code,
          :client_id     => ENV['GITHUB_CLIENT_ID'],
          :client_secret => ENV['GITHUB_SECRET'],
        },
        :headers => {
          "Accept"     => "application/json",
          "User-Agent" => "OAuth Test App"
        }
      )
    session[:github_access_token] = response["access_token"]
    redirect_to Instructor.find(session[:instructor_id])
  end

  private
    def gist_params
      params.require(:gist).permit(:title, :content, :gist_link, :date, :instructor_id, :cohort_id)
    end  
end
