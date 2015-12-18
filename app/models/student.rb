# == Schema Information
#
# Table name: students
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#

class Student < ActiveRecord::Base 
  has_secure_password
  has_many :enrollments
  has_many :submissions
  has_many :assignments, through: :submissions
  belongs_to :cohort


  def completion_rate 
    submissions = self.submissions
    total_submitted = []
    completed = []
    
    submissions.each { |submission| total_submitted << submission if submission.grade_status == "incomplete" || "complete"}

    submissions.each { |submission| completed << submission if submission.grade_status == "complete"}

    completion_rate = (completed.length.to_f / total_submitted.length.to_f) * 100 
  end

  def pending_assignments?
    pending = []
    submissions = self.submissions

    submissions.each { |submission| pending << submission if submission.grade_status == "pending"}
    total_pending = pending.length
  end
end

          
    
    
    # completion_rate = (num_complete/submissions.length) * 100




