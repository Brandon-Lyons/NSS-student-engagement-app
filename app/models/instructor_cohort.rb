class InstructorCohort < ActiveRecord::Base
  attr_accessible :cohort_id, :instructor_id
  belongs_to :cohort
  belongs_to :instructor
end
