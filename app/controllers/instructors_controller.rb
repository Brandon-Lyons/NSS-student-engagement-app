class InstructorsController < ApplicationController
  def index
    @instructor = Instructor.find_by_email(current_user.email)
  end
end
