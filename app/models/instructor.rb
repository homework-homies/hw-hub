 # == Schema Information
#
# Table name: instructors
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#

class Instructor < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true 
  validates :password, length: { minimum: 6 }
  has_many :gists
  has_many :assignments
  has_and_belongs_to_many :cohorts
end
