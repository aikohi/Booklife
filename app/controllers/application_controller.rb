class ApplicationController < ActionController::Base
	def require_user_logged_in
		unless logged_in?
			redirect_to users_path
		end
	end
	def current_user
		@current_user ||= User.find_by(id: sesstion[:user_id])
	end

	def logged_in?
		!!current_user
	end
end
