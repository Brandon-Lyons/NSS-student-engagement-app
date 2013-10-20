class MentorsController < ApplicationController

  def index
    @mentor = Mentor.find_by_email(current_user.email)
  end
end
