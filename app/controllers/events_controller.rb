class EventsController < ApplicationController

	def index
		@hash = request.env['omniauth.auth']
		# @info_hash = hash.info
	end

	def auth_destroy

	end
end
