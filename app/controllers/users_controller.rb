class UsersController < ApplicationController
	def new
    	@user = User.new 
  	end

  	def create 	
    	@user = User.create(user_params)
	    if @user.save #If saving the user was successful
	      redirect_to "http://facebook.com"
	    else
	      render "new" #Go to the new view for the user
	    end
    end

    def user_params
		params.require(:user).permit(:username,:password,:phone)
	end

	def find
		return Biz.find_by! username: name
	end

end
