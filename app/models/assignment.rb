# == Schema Information
#
# Table name: assignments
#
#  id            :integer          not null, primary key
#  title         :string
#  prompt_link   :string
#  cohort_id     :integer
#  instructor_id :integer
#  assigned_on   :date
#

class Assignment < ActiveRecord::Base
	belongs_to :cohort
	belongs_to :instructor
  has_many :submissions
end
