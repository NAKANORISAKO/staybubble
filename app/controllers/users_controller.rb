class UsersController < ApplicationController

	def show
		@user = User.find(current_user.id)
		if @user.oshibi != nil 
		@date = Date.today - User.find(current_user.id).oshibi
		end

	end

	


end