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
  has_many :gists
  has_many :assignments
end
