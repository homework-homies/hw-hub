class Student < ActiveRecord::Base 
  has_many :enrollments
  has_many :submissions
  belongs_to :cohort, through :enrollments
end
