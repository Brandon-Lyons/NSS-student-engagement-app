class Users::RegistrationsController < Devise::RegistrationsController
  prepend_before_filter :require_no_authentication, :only => [ :new, :create ]

  # GET /resource/sign_up
  def new
   build_resource({})
   respond_with self.resource
  end

  # POST /resource
  def create
    role = params[:user][:role]
    build_resource(sign_up_params)
    if role == "instructor"
      Instructor.create!(name: params[:user][:name], email: params[:user][:email])
    elsif role == "mentor"
      Mentor.create!(name: params[:user][:name], email: params[:user][:email])
    elsif role == "student"
      Student.create!(name: params[:user][:name], email: params[:user][:email])
    end

    if resource.save
     if resource.active_for_authentication?
       set_flash_message :notice, :signed_up if is_navigational_format?
       sign_up(resource_name, resource)
       respond_with resource, :location => after_sign_up_path_for(resource)
     else
       set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
       expire_session_data_after_sign_in!
       respond_with resource, :location => after_inactive_sign_up_path_for(resource)
     end
    else
     clean_up_passwords resource
     respond_with resource
    end
  end
end