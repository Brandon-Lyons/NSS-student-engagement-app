ActiveAdmin.register Cohort do
  show :name => :name do
    panel "Instructors" do
      table_for cohort.instructors do |t|
        t.column("Name"){|ins| link_to ins.name, admin_instructor_path(ins)}
        t.column("Email"){|ins| ins.email}
      end
    end
    panel "Mentors" do
      table_for cohort.mentors do |t|
        t.column("Name"){|ment| link_to ment.name, admin_mentor_path(ment)}
        t.column("Email"){|ment| ment.email}
        t.column("Student assigned to"){|ment| ment.student_in_cohort(cohort).name}
      end
    end
    panel "Students" do
      table_for cohort.students do |t|
        t.column("Name"){|student| link_to student.name, admin_student_path(student)}
        t.column("Email"){|student| student.email}
      end
    end
  end
end
