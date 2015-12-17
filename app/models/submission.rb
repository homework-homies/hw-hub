# == Schema Information
#
# Table name: submissions
#
#  id            :integer          not null, primary key
#  student_id    :integer
#  assignment_id :integer
#  submitted_on  :date
#  grade_status  :string
#  comments      :string
#

class Submission < ActiveRecord::Base
	belongs_to :student
	belongs_to :assignment
end
