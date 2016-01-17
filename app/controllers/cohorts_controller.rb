class CohortsController < ApplicationController
  def new
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      @cohort = Cohort.new
      @producers = Producer.all
    else
      redirect_to '/'
    end
  end

  def create
    @cohort = Cohort.create(cohort_params)
    @instructor = Instructor.find(session[:instructor_id])
    @cohort.instructors.push(@instructor)
    @cohort.producer = Producer.find_by(name: params["producer_select"])
    @cohort.save()

    @students = params[:student_emails].split(",")

    @students.each do |student| 
      CohortMailer.cohort_email(student).deliver_now
    end
    redirect_to @cohort
  end

  def show
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students
    @gists = @cohort.gists
    else
      redirect_to '/'
    end
  end

  private
    def cohort_params
       params.require(:cohort).permit(:cohort_name, :start_on, :end_on, :producer_id)
    end 

end