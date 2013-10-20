class CohortParticipant < ActiveRecord::Base
  attr_accessible :cohort_id, :student_id, :mentor_id
  belongs_to :student
  belongs_to :mentor
  belongs_to :cohort
end