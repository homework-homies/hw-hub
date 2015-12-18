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
    num_complete = 0;
    submissions.each do |submission|
      if submission.grade_status == "complete"
        num_complete ++;
      end
    end
    completion_rate = (num_complete/submissions) * 100
  end
end
