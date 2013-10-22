class Student < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :cohort_participants
  has_one :cohort, :through => :cohort_participants
  has_one :mentor, :through => :cohort_participants
end
