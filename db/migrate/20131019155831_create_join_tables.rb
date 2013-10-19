class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :instructor_cohorts do |t|
      t.integer :instructor_id
      t.integer :cohort_id
    end

    create_table :cohort_participants do |t|
      t.integer :cohort_id
      t.integer :student_id
      t.integer :mentor_id
    end
  end
end
