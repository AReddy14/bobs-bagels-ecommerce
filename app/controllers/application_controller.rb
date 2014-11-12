class ApplicationController < ActionController::API
	include ActionController::ImplicitRender
	# Not sure I want the above in here, more research required.
  helper_method :current_user

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
end
