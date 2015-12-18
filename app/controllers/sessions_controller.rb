class SessionsController < ApplicationController

  def new
  end
  
  def create
    if params[:login_selector] == "Student"
      @student = Student.find_by({email: params[:email]}).try(:authenticate, params[:password])
      session[:student_id] = @student.id
      redirect_to @student
    elsif params[:login_selector] == "Instructor"
      @instructor = Instructor.find_by({email: params[:email]}).try(:authenticate, params[:password])
      session[:instructor_id] = @instructor.id
      redirect_to @instructor
    elsif params[:login_selector] == "Producer"
      @producer = Producer.find_by({email: params[:email]}).try(:authenticate, params[:password])
      session[:producer_id] = @producer.id
      redirect_to @producer
    end  
  end

  def destroy
    if sessions[:student_id] || sessions[:instructor_id] || sessions[:producer_id]
      sessions[:student_id] = nil
      sessions[:instructor_id] = nil
      sessions[:producer_id] = nil
    end
    redirect_to '/'
  end

end
