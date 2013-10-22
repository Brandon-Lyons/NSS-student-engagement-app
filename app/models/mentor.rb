class Mentor < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :cohort_participants
  has_many :student, :through => :cohort_participants
  has_many :cohort, :through => :cohort_participants
end
