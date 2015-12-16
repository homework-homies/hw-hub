class Instructor < ActiveRecord::Base
  has_many :gists
  has_many :assignments
end