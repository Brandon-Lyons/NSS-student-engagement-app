ActiveAdmin.register Student do
  controller do
    def create
      student = Student.create(name: params[:student][:name], email: params[:student][:email].downcase)
      if student.save
        User.create!(email: params[:student][:email].downcase, password: "password", role: "student")
        redirect_to admin_students_path
      else
        render :new
      end
    end
  end
end
