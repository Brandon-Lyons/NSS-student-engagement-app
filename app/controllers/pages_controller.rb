class PagesController < ApplicationController
  def show
    render params[:page] # => renders /app/views/pages/<page>.html.erb
  end
end