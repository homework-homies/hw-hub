class Gist < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :cohort
end