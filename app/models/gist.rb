# == Schema Information
#
# Table name: gists
#
#  id            :integer          not null, primary key
#  title         :string
#  content       :string
#  gist_link     :string
#  instructor_id :integer
#  cohort_id     :integer
#

class Gist < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :cohort
end
