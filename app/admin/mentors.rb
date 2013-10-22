ActiveAdmin.register Mentor do
  controller do
    def create
      mentor = Mentor.create(name: params[:mentor][:name], email: params[:mentor][:email].downcase)
      user = User.find_by_email(params[:mentor][:email].downcase)
      if mentor.save
        if user.nil?
          User.create!(email: params[:mentor][:email].downcase, password: "password", role: "mentor")
        end
        redirect_to admin_mentors_path
      else
        render :new
      end
    end
  end
end
