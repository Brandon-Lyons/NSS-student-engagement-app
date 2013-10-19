class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    role = current_user.role
    if role == 'instructor'
      redirect_to instructors_path
    elsif role == 'student'
      redirect_to students_path
    elsif role == 'mentor'
      redirect_to mentors_path
    end
  end
end
