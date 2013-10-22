ActiveAdmin.register Instructor do
  controller do
    def create
      instructor = Instructor.create(name: params[:instructor][:name], email: params[:instructor][:email].downcase)
      user = User.find_by_email(params[:instructor][:email].downcase)
      if instructor.save
        if user.nil?
          User.create!(email: params[:instructor][:email].downcase, password: "password", role: "instructor")
        end
        redirect_to admin_instructors_path
      else
        render :new
      end
    end
  end
end
