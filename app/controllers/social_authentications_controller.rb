class SocialAuthenticationsController < ApplicationController
  def index
  	@social_authentications = current_user.social_authentications if current_user
  end

  def create
  	auth = request.env['omniauth.auth']
  	current_user.social_authentications.find_or_create_by_provider_and_uid(auth['provider'], auth['uid'].to_s)
  	flash[:notice] = "Account connected."
  	redirect_to social_authentications_show_path
  end

  def destroy
  end
end
