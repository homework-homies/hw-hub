class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:login_selector] == "student"
      @student = Student.find_by({email: params[:email]}).try(:authenticate, params[:password])
      sessions[:student_id] = @student.id
    elsif params[:login_selector] == "instructor"
      @instructor = Instructor.find_by({email: params[:email]}).try(:authenticate, params[:password])
      sessions[:instructor_id] = @instructor.id
    elsif params[:login_selector] == "producer"
      @producer = Producer.find_by({email: params[:email]}).try(:authenticate, params[:password])
      sessions[:producer_id] = @producer.id
    end  
  end

  def destroy
    if sessions[:student_id] || sessions[:instructor_id] || sessions[:producer_id]
      sessions[:student_id] = nil
      sessions[:instructor_id] = nil
      sessions[:producer_id] = nil
    end
  end

end
