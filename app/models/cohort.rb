# == Schema Information
#
# Table name: cohorts
#
#  id          :integer          not null, primary key
#  cohort_name :string
#  producer_id :integer
#  start_on    :date
#  end_on      :date
#

class Cohort < ActiveRecord::Base
  has_many :assignments
  belongs_to :producer
  has_many :gists
  has_and_belongs_to_many :instructors
  has_many :students
end

def num_students
  self.students.length
end