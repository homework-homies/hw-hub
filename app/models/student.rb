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
  validates :email, uniqueness: true 
  validates :password, length: { minimum: 6 }
  has_many :enrollments
  has_many :submissions
  has_many :assignments, through: :submissions
  belongs_to :cohort


  def completion_rate 
    complete = 0

    submissions.each do |submission| 
      if submission.complete?
        complete += 1 
      end
    end

    if complete > 0 
      total = (complete.to_f / submissions.all.length.to_f) * 100
    else
      total = 0
    end
  end

  def pending_assignments?
    cohort.assignments.all.length - submissions.all.length
  end

  def submitted_hw?
    (submissions.all.length.to_f / cohort.assignments.all.length.to_f) * 100
  end
end




