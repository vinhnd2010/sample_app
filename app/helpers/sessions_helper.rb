module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id
	end

	# Returns the current logged-in users
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end
end
