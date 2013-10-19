class Cohort < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date

  has_many :instructor_cohorts
  has_many :instructors, :through => :instructor_cohorts
  has_many :cohort_participants
  has_many :students, :through => :cohort_participants
  has_many :mentors, :through => :cohort_participants
end
