# == Schema Information
#
# Table name: producers
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#

class Producer < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true 
  validates :password, length: { minimum: 6 }
  has_many :cohorts
end
