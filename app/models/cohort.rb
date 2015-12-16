class Cohort < ActiveRecord::Base
  has_many :assignments
  belongs_to :producer
  has_many :enrollments
  has_many :gists
  has_many :instructors, through :enrollments
end