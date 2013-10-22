class Mentor < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :cohort_participants
  has_many :students, :through => :cohort_participants
  has_many :cohorts, :through => :cohort_participants

  def student_in_cohort(cohort)
    self.students.find_by_cohort_id(cohort.id)
  end
end
