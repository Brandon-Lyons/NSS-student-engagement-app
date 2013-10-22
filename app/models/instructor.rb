class Instructor < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :instructor_cohorts
  has_many :cohorts, :through => :instructor_cohorts
end
