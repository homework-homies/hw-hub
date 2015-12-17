class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:student_id]
      @current_user ||= Student.find(session[:student_id])
    elsif session[:instructor_id]
      @current_user ||= Instructor.find(session[:instructor_id])
    elsif session[:producer_id]
      @current_user ||= Producer.find(session[:producer_id])
    end
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
  
end
