class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if resource.has_role? "instructor"
      instructors_path
    elsif resource.has_role? "student"
      students_path
    elsif resource.has_role? "mentor"
      mentors_path
    end
  end

end
