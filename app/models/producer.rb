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
  has_many :cohorts
end
