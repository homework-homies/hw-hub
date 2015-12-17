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
end
