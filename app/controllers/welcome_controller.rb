class WelcomeController < ApplicationController
  def index
  	@instructor = Instructor.new
  	@student = Student.new
  	@producer = Producer.new
  end
end  