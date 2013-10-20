class StudentsController < ApplicationController
  def index
    @student = Student.find_by_email(current_user.email)
  end
end
