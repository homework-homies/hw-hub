class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:login_selector] == "Student"
      @student = Student.find_by({email: params[:email]}).try(:authenticate, params[:password])
      if @student 
        session[:student_id] = @student.id
        redirect_to @student
      else
        flash[:notice] = "Wrong Password. Try Again."
        redirect_to '/'
      end
    elsif params[:login_selector] == "Instructor"
      @instructor = Instructor.find_by({email: params[:email]}).try(:authenticate, params[:password])
      if @instructor
        session[:instructor_id] = @instructor.id
        redirect_to @instructor
      else
        flash[:notice] = "Wrong Password. Try Again."
        redirect_to '/'
      end
    elsif params[:login_selector] == "Producer"
      @producer = Producer.find_by({email: params[:email]}).try(:authenticate, params[:password])
      if @producer
        session[:producer_id] = @producer.id
        redirect_to @producer
      else
        flash[:notice] = "Wrong Password. Try Again."
        redirect_to '/'
      end
    end  
  end

  def destroy
    if session[:student_id] || session[:instructor_id] || session[:producer_id]
      session[:student_id] = nil
      session[:instructor_id] = nil
      session[:producer_id] = nil
    end
    redirect_to '/'
  end

end
